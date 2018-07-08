module MultipleElements exposing (..)

import Html exposing (p, div, text)

main : Html.Html msg

main =
    div []
    [ 
     p [] [ text "Hey" ],
     p [] [ text "Hola" ], 
     p [] [ text "Hello" ]
    ]