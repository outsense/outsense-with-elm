module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (Html, a, button, footer, h1, header, img, nav, node, p, text)
import Html.Attributes exposing (class, href, src, target)
import Page.SxswPage exposing (sxswPage)
import Page.TopPage exposing (topPage)
import Route exposing (Route)
import Url exposing (Url)


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = UrlRequested
        }



-- MODEL


type alias Model =
    { key : Nav.Key
    , page : Page
    }


type Page
    = TopPage
    | SxswPage


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    changeRouteTo (Route.parse url)
        { key = key
        , page = TopPage
        }



-- UPDATE


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlRequested urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            changeRouteTo (Route.parse url) model


changeRouteTo : Maybe Route -> Model -> ( Model, Cmd Msg )
changeRouteTo maybeRoute model =
    case maybeRoute of
        Nothing ->
            ( model, Cmd.none )

        Just Route.Top ->
            ( { model | page = TopPage }, Cmd.none )

        Just Route.SXSW ->
            ( { model | page = SxswPage }, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Elm 0.19 starter"
    , body =
        [ siteHeader
        , case model.page of
            TopPage ->
                topPage

            SxswPage ->
                sxswPage
        , siteFooter
        ]
    }


siteHeader : Html Msg
siteHeader =
    header [ class "site-header" ]
        [ h1 []
            [ a [ href "/" ]
                [ img [ src "../assets/images/OutsenseLogo.png" ] []
                ]
            ]
        , nav []
            [ button [] [ text "News" ]
            , a [ href "https://twitter.com/teamoutsense", target "_blank" ] [ text "Twitter" ]
            , a [ href "https://www.facebook.com/teamOUTSENSE/", target "_blank" ] [ text "Facebook" ]
            ]
        ]


siteFooter : Html Msg
siteFooter =
    footer [ class "site-footer" ]
        [ p [ class "copyright" ] [ text "© 2018-2019 OUTSENSE" ]
        ]
