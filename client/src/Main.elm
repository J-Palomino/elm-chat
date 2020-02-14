module Main exposing (main)

import Browser
import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)
import Icon exposing (IconType(..), icon)


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    div
        [ class "container"
        , style "padding" "20px"
        ]
        [ h1
            [ class "title" ]
            [ text (String.fromInt model) ]
        , div
            [ class "field is-grouped" ]
            [ button
                [ onClick Increment
                , class "button is-success is-outlined"
                , style "margin-right" "8px"
                ]
                [ icon Regular "plus"
                , p [] [ text "Increment" ]
                ]
            , button
                [ onClick Decrement, class "button is-danger is-outlined" ]
                [ icon Regular "minus"
                , p [] [ text "Decrement" ]
                ]
            ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }
