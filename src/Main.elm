module Main exposing (..)

import Browser
import Html.Events exposing (onClick)
import Html exposing (..)

main = Browser.sandbox { init = init, update = update, view = view }

type alias Model = Int

init : Model
init = 0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> model + 1
    Decrement -> model - 1

view : Model -> Html Msg
view model =
  div []
    [ 
     div [] [ text (String.fromInt model) ] , 
     button [ onClick Decrement ] [ text "-" ] ,
     button [ onClick Increment ] [ text "+" ]
    ]