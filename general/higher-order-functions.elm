module HigherOrderFunctions exposing (..)

import Html exposing (p ,div, text)

multThree : number -> number -> number -> number
multThree x y z = x * y * z

multTwoWithNine : number -> number -> number
multTwoWithNine = multThree 9

chain: Int -> List Int
chain num =
  let
      even n = n % 2 == 0
  in
      case num of
        1 -> [1]
        num -> 
          if even num then
            num :: chain (num // 2)
          else
            num :: chain (num * 3 + 1)

doubleAll: List Int -> List Int
doubleAll numbers =
  List.map(flip (*) 2)numbers

sum : List number -> number
sum xs = List.foldl (\x acc -> acc + x) 0 xs

main : Html.Html msg

main =
   div []
    [ 
     p [] [ text "Normal Functions" ],
     p [] [ text (multThree 4 5 6 |> toString)],
     p [] [ text "Curried Functions" ],
     p [] [ text (multTwoWithNine 4 5 |> toString)],
     p [] [ text "List Map Functions" ],
     p [] [ text ((List.map ((+) 3) [1,5,3,1,6]) |> toString)],
     p [] [ text (List.map (flip (++) "!") ["BIFF", "BANG", "POW"] |> toString)],
     p [] [ text (List.map (List.repeat 3) [3, 4, 5, 6] |> toString)],
     p [] [ text (List.map (List.map (flip (^) 2)) [[1,2],[3,4,5,6],[7,8]] |> toString)],
     p [] [ text (List.map Tuple.first [(1,2),(3,5),(6,3),(2,6),(2,5)] |> toString)],
     p [] [ text (doubleAll [1,2,3,4,5] |> toString)],
     p [] [ text "List Filter Functions" ],
     p [] [ text (List.filter ((>) 3) [1,5,3,2,1,6,4,3,2,1] |> toString)],
     p [] [ text (List.filter ((==) 3) [1,5,3,2,1,6,4,3,2,1] |> toString)],
     p [] [ text "Chain function" ],
     p [] [ text (chain 100 |> toString)],
     p [] [ text "Lambdas" ],
     p [] [ text (chain 100 |> List.filter(\item -> item % 2 == 0) |> toString)],
     p [] [ text "Sum of [3, 5, 2, 1]" ],
     p [] [ text (sum [3,5,2,1] |> toString)]
    ]