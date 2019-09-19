module Route exposing (Route(..), href, parse, parser, replaceUrl)

import Browser.Navigation as Nav
import Html exposing (Attribute)
import Html.Attributes as Attr
import Url exposing (Url)
import Url.Parser as Parser exposing (oneOf, s, top)



-- ROUTING


type Route
    = Top
    | SXSW


parser : Parser.Parser (Route -> a) a
parser =
    oneOf
        [ oneOf
            [ Parser.map Top top
            , Parser.map SXSW (s "sxsw")
            ]
        ]



-- PUBLIC HELPERS


href : Route -> Attribute msg
href targetRoute =
    Attr.href (routeToString targetRoute)


replaceUrl : Nav.Key -> Route -> Cmd msg
replaceUrl key route =
    Nav.replaceUrl key (routeToString route)


parse : Url.Url -> Maybe Route
parse url =
    url
        |> Parser.parse parser



-- INTERNAL


routeToString : Route -> String
routeToString page =
    let
        pieces =
            case page of
                Top ->
                    []

                SXSW ->
                    [ "sxsw" ]
    in
    "#/" ++ String.join "/" pieces
