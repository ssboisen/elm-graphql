-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Interface.RepositoryNode exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)


type alias Fragments decodesTo =
    {
    onCommitComment : SelectionSet decodesTo GithubNoFormat.Object.CommitComment,
 onCommitCommentThread : SelectionSet decodesTo GithubNoFormat.Object.CommitCommentThread,
 onIssue : SelectionSet decodesTo GithubNoFormat.Object.Issue,
 onIssueComment : SelectionSet decodesTo GithubNoFormat.Object.IssueComment,
 onPullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest,
 onPullRequestReview : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReview,
 onPullRequestReviewComment : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReviewComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
      Fragments decodesTo
      -> SelectionSet decodesTo GithubNoFormat.Interface.RepositoryNode
fragments selections =
    Object.exhaustiveFragmentSelection
        [
         Object.buildFragment "CommitComment" selections.onCommitComment,
 Object.buildFragment "CommitCommentThread" selections.onCommitCommentThread,
 Object.buildFragment "Issue" selections.onIssue,
 Object.buildFragment "IssueComment" selections.onIssueComment,
 Object.buildFragment "PullRequest" selections.onPullRequest,
 Object.buildFragment "PullRequestReview" selections.onPullRequestReview,
 Object.buildFragment "PullRequestReviewComment" selections.onPullRequestReviewComment
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    {
      onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onCommitCommentThread = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
 -> SelectionSet decodesTo GithubNoFormat.Interface.RepositoryNode
repository object_ =
      Object.selectionForCompositeField "repository" [] (object_) (identity)
