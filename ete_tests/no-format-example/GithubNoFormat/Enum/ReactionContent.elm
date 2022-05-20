-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.ReactionContent exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Emojis that can be attached to Issues, Pull Requests and Comments.

  - ThumbsUp - Represents the 👍 emoji.
  - ThumbsDown - Represents the 👎 emoji.
  - Laugh - Represents the 😄 emoji.
  - Hooray - Represents the 🎉 emoji.
  - Confused - Represents the 😕 emoji.
  - Heart - Represents the ❤️ emoji.

-}
type ReactionContent
    = ThumbsUp
    | ThumbsDown
    | Laugh
    | Hooray
    | Confused
    | Heart
list : List ReactionContent
list =
    [ThumbsUp, ThumbsDown, Laugh, Hooray, Confused, Heart]
decoder : Decoder ReactionContent
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "THUMBS_UP" ->
                        Decode.succeed ThumbsUp

                    "THUMBS_DOWN" ->
                        Decode.succeed ThumbsDown

                    "LAUGH" ->
                        Decode.succeed Laugh

                    "HOORAY" ->
                        Decode.succeed Hooray

                    "CONFUSED" ->
                        Decode.succeed Confused

                    "HEART" ->
                        Decode.succeed Heart

                    _ ->
                        Decode.fail ("Invalid ReactionContent type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ReactionContent -> String
toString enum____ =
    case enum____ of
        ThumbsUp ->
                "THUMBS_UP"


        ThumbsDown ->
                "THUMBS_DOWN"


        Laugh ->
                "LAUGH"


        Hooray ->
                "HOORAY"


        Confused ->
                "CONFUSED"


        Heart ->
                "HEART"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ReactionContent
fromString enumString____ =
    case enumString____ of
        "THUMBS_UP" ->
                Just ThumbsUp


        "THUMBS_DOWN" ->
                Just ThumbsDown


        "LAUGH" ->
                Just Laugh


        "HOORAY" ->
                Just Hooray


        "CONFUSED" ->
                Just Confused


        "HEART" ->
                Just Heart

        _ ->
                Nothing