module App where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)

import StartApp


type alias Model =
  {}


initialModel : Model
initialModel =
  {}


type Action
  = NoOp


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model


view : Address Action -> Model -> Html
view address model =
  div []
    [ h1 [] [ text "Hello, World" ]
    ]


main : Signal Html
main =
  StartApp.start
    { model = initialModel
    , view = view
    , update = update
    }