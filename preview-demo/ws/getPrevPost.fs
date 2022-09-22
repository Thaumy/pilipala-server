module ws.getPrevPost

open System
open app.user
open fsharper.op
open fsharper.typ
open fsharper.alias
open fsharper.op.Foldable
open pilipala.container.post
open pilipala.container.comment
open pilipala.util.text
open WebSocketSharp.Server
open getPost

type getPrevPost() =
    inherit WebSocketBehavior()

    override self.OnMessage e =
        Console.WriteLine $"getPrevPost from client:{e.Data}"

        //TODO ...
        let prev_post =
            user.GetPost(Int64.Parse e.Data) |> bind
            <| fun post ->
                post.["PredId"].fmap
                <| fun exist ->
                    exist |> bind <| cast
                    |> fmap cast
                    |> fmap (
                        user.GetPost
                        .> fmap Some
                        .> (fun k -> unwrapOr k (always None))
                    )
                    |> unwrapOr
                    <| (always None)
            |> fmap Some
            |> unwrapOr
            <| always None
            |> bind
            <| id

        let json =
            prev_post
            |> fmap (fun x -> x.encodeToJson ())
            |> unwrapOr
            <| always ""

        self.Send(json)
