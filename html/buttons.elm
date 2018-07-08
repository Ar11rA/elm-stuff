import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)

main : Program Never number Msg
main =
    beginnerProgram { model = 0, view = view, update = update }

stylesheet : Html msg
stylesheet =
    let
        tag =
            "link"

        attrs =
            [ attribute "rel" "stylesheet"
            , attribute "property" "stylesheet"
            , attribute "href" "//unpkg.com/tachyons@4.6.1/css/tachyons.min.css"
            ]

        children =
            []
    in
        node tag attrs children

view : a -> Html Msg
view model =
    div [ class "f-headline" ]
        [ stylesheet
        , button [ onClick Increment, class "bw0 br2 green pa2 white fw4 w4 tc ttu tracked" ] [ text "+" ]
        , div [] [ text (toString model) ]
        , button [ onClick Decrement, class "bw0 br2 blue pa2 white fw4 w4 tc ttu tracked" ] [ text "-" ]
        , button [ onClick Reset, class "bw0 br2 red ml2 pa2 white fw4 tc ttu tracked" ] [ text "Reset" ]
        ]


type Msg
    = Increment
    | Decrement
    | Reset

update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0
