module Modules exposing (..)

import Html exposing (div, p, text)
import Geometry

main : Html.Html msg

main =
  div []
    [ 
     p [] [ text "Sphere Volume" ],
     p [] [ text (Geometry.sphereVolume 5 |> toString) ],
     p [] [ text "Cuboid Volume" ],
     p [] [ text (Geometry.cuboidArea 5 6 7 |> toString) ],
     p [] [ text "Cube Volume" ],
     p [] [ text (Geometry.cubeArea 5 |> toString) ],
     p [] [ text "Rectangle Volume" ],
     p [] [ text (Geometry.rectangleArea 6 5 |> toString) ]

    ]