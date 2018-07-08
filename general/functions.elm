module Functions exposing (..)

import Html exposing (p ,div, text)

addOne : Int -> Int

addOne x =
  x + 1

add : Int -> Int -> Int

add x y =
  x + y

main : Html.Html msg

main =
   div []
    [ 
     p [] [ text "Add one to 5" ],
     p [] [ text (5 |> addOne |> toString)],
     p [] [ text "Add 6 and 7" ],
     p [] [ text (add 6 7|> toString)]
    ]