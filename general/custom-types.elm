module CustomTypes exposing (..)

import Html exposing (p, div, text)

type alias Side = Float
type alias Word = String
type Shape = Circle Side | Rectangle Side Side
type Car = Car { company : Word
               , model : Word
               , year : Int
               }

tellCar : Car -> Word

tellCar (Car {company, model, year}) = 
  "This " ++ company ++ " " ++
  model ++ " was made in " ++ toString year

surface : Shape -> Side

surface s = case s of
  (Circle r) -> pi * r ^ 2
  (Rectangle x y) -> x * y

stang : Car

stang = Car {company="Ford", model="Mustang", year=1967}

main : Html.Html msg

main =
    div []
    [ 
     p [] [ text "Circle Area" ],
     p [] [ text (toString <| surface <| Circle 10) ],
     p [] [ text "Rectangle Area" ],
     p [] [ text (toString <| surface <| Rectangle 5 6) ],
     p [] [ text "Car Message" ],
     p [] [ text (toString <| tellCar (stang)) ] 
    ]