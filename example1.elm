module Exercise1 where

import Html exposing (..)
import Html.Events exposing (onClick)
import String exposing (..)
import StartApp.Simple exposing (start)

type alias Model = {
  text: String,
  isUpper: Bool
}

initialModel = { text = "hello ruth", isUpper = False}

type Action = Toggle

update : Action -> Model -> Model
update action model =
  case action of
    Toggle ->
    let
      transformer = if model.isUpper then String.toUpper else String.toLower
    in
      {model | text = transformer model.text, isUpper = (not model.isUpper)}

view : Signal.Address Action -> Model -> Html
view address model = div [] [
      h1 [] [text model.text],
      button [onClick address Toggle] [text "Toggle"]
      ]

main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
