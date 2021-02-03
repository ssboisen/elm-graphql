-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.UnassignedEvent exposing (..)

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

{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.UnassignedEvent
actor object_ =
      Object.selectionForCompositeField "actor" [] (object_) (identity >> Decode.nullable)


{-| Identifies the assignable associated with the event.
-}
assignable : SelectionSet decodesTo GithubNoFormat.Interface.Assignable
 -> SelectionSet decodesTo GithubNoFormat.Object.UnassignedEvent
assignable object_ =
      Object.selectionForCompositeField "assignable" [] (object_) (identity)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.UnassignedEvent
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.UnassignedEvent
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the subject (user) who was unassigned.
-}
user : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.UnassignedEvent
user object_ =
      Object.selectionForCompositeField "user" [] (object_) (identity >> Decode.nullable)
