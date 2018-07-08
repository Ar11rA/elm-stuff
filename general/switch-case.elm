module SwitchCase exposing (..)

import Html exposing (p ,div, text)

lucky : number -> String
lucky x =
    case x of
        7 -> "LUCKY NUMBER SEVEN!"
        _ -> "Sorry, you're out of luck, pal!"

charName : Char -> String
charName c = 
    case c of
        'a' -> "Albert"
        'b' -> "Broseph"
        'c' -> "Cecil"
        _ -> "Nothing"

main : Html.Html msg

main =
   div []
    [ 
     p [] [ text "Lucky when 7" ],
     p [] [ text (7 |> lucky)],
     p [] [ text "Unlucky when not 7" ],
     p [] [ text (13 |> lucky)],
     p [] [ text "Character Case" ],
     p [] [ text ('a' |> charName)]
    ]