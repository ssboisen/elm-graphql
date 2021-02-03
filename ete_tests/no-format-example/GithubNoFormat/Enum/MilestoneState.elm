-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.MilestoneState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a milestone.

  - Open - A milestone that is still open.
  - Closed - A milestone that has been closed.

-}
type MilestoneState
    = Open
    | Closed
list : List MilestoneState
list =
    [Open, Closed]
decoder : Decoder MilestoneState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OPEN" ->
                        Decode.succeed Open

                    "CLOSED" ->
                        Decode.succeed Closed

                    _ ->
                        Decode.fail ("Invalid MilestoneState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : MilestoneState -> String
toString enum =
    case enum of
        Open ->
                "OPEN"


        Closed ->
                "CLOSED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe MilestoneState
fromString enumString =
    case enumString of
        "OPEN" ->
                Just Open


        "CLOSED" ->
                Just Closed

        _ ->
                Nothing
