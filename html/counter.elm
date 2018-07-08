import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)

main : Program Never number Msg
main =
  beginnerProgram { model = 0, view = view, update = update }

view : a -> Html.Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Reset ] [ text "Reset" ]
    ]

type Msg = Increment | Decrement | Reset

update : Msg -> number -> number
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Reset ->
      0
