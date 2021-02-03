-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.LanguageOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which language connections can be ordered.

  - Size - Order languages by the size of all files containing the language

-}
type LanguageOrderField
    = Size
list : List LanguageOrderField
list =
    [Size]
decoder : Decoder LanguageOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "SIZE" ->
                        Decode.succeed Size

                    _ ->
                        Decode.fail ("Invalid LanguageOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : LanguageOrderField -> String
toString enum =
    case enum of
        Size ->
                "SIZE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe LanguageOrderField
fromString enumString =
    case enumString of
        "SIZE" ->
                Just Size

        _ ->
                Nothing
