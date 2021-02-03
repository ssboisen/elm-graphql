-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.DeployKey exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.DeployKey
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.DeployKey
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The deploy key.
-}
key : SelectionSet String GithubNoFormat.Object.DeployKey
key =
      Object.selectionForField "String" "key" [] (Decode.string)


{-| Whether or not the deploy key is read only.
-}
readOnly : SelectionSet Bool GithubNoFormat.Object.DeployKey
readOnly =
      Object.selectionForField "Bool" "readOnly" [] (Decode.bool)


{-| The deploy key title.
-}
title : SelectionSet String GithubNoFormat.Object.DeployKey
title =
      Object.selectionForField "String" "title" [] (Decode.string)


{-| Whether or not the deploy key has been verified.
-}
verified : SelectionSet Bool GithubNoFormat.Object.DeployKey
verified =
      Object.selectionForField "Bool" "verified" [] (Decode.bool)
