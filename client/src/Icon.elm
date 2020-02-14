module Icon exposing (IconType(..), icon)

import Html exposing (Html, span)
import Html.Attributes exposing (class)


type IconType
    = Regular
    | Solid
    | Light
    | Duotone
    | Brands


iconToString : IconType -> String
iconToString iconType =
    case iconType of
        Regular ->
            "far"

        Solid ->
            "fas"

        Light ->
            "fal"

        Duotone ->
            "fad"

        Brands ->
            "fab"


icon : IconType -> String -> Html msg
icon iconType iconName =
    span
        [ class "icon", class (iconToString iconType ++ " fa-" ++ iconName) ]
        []
