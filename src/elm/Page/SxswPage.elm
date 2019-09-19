module Page.SxswPage exposing (sxswPage)

import Browser
import Html exposing (Html, a, div, h1, h2, h3, iframe, img, node, p, section, text, video)
import Html.Attributes exposing (attribute, class, href, src, target)


sxswPage : Html msg
sxswPage =
    node "main"
        []
        [ video
            [ class "cover"
            , src "./assets/SXSW/demo.mp4"
            , attribute "autoplay" ""
            , attribute "loop" ""
            , attribute "muted" ""
            ]
            []
        , viewGreeting
        , viewMovie
        , viewGold
        , viewSilver
        , viewBronze
        , viewSpecialThanks
        ]


viewGreeting : Html msg
viewGreeting =
    section []
        [ h1 [] [ text "News" ]
        , h2 [] [ text "『ミライの月面基地』をSXSWに出展しました" ]
        , p []
            [ text "この度はSouth by Southwest(以下「SXSW」)にて展示が終了しましたので、ご報告差し上げます。"
            , text "また、クラウドファンディングにて、たくさんのご支援、ご声援、誠にありがとうございました。"
            ]
        , p []
            [ text "世界最大級のスタートアップの祭典「SXSW」では、宇宙に興味がある方、優れた技術とビジョンを持つスタートアップ企業を探している方など、様々な企業、国の方に、弊社のブースにご来場いただけました。"
            , text "皆様のクラウドファンディングのご支援により、2m×2m級のプロトタイプの開発・製造を行うことができ、プロトタイプを用いた展開・収納実験では、訪れた方の多くが動画や写真の撮影され、成功した際には大きな歓声が生まれるなど、大変な賑わいを見せました。"
            , text "また「宇宙だけでなく被災地での仮設住居として使えるのでは」「砂漠など極限環境の住居として売れるのではないか」など、様々なご意見や、コンペティションやハッカソン等のイベントの情報を提供くださる方もおり、多種多様なビジネスチャンスの機会を得られました。"
            ]
        , p []
            [ text "今後も皆様に良いお知らせができますようOUTSENSE一同気を引き締めて努めてまいりますので、引き続き、応援のほどよろしくお願いいたします。" ]
        , div [ class "parallel" ]
            [ img [ src "./assets/images/SXSW/01.jpg" ] []
            , img [ src "./assets/images/SXSW/02.jpg" ] []
            ]
        ]


viewMovie : Html msg
viewMovie =
    section [ class "movie" ]
        [ h1 [] [ text "Movie" ]
        , div []
            [ iframe
                [ src "https://www.youtube.com/embed/R2440EWIa_o"
                , attribute "frameborder" "0"
                , attribute "allow" "accelerometer, autoplay; encrypted-media; gyroscope; picture-in-picture"
                , attribute "allowfullscreen" ""
                ]
                []
            ]
        ]


viewGold : Html msg
viewGold =
    section [ class "sponsors" ]
        [ h1 [] [ text "Sponsors" ]
        , h2 [] [ text "ゴールドスポンサー" ]
        , h3 [] [ text "宇宙システム開発株式会社 様" ]
        , img [ src "../assets/images/sponsors/SSDLogo.jpg" ] []
        , p [] [ text "Space Systems Development Corporation contributes to software development for space systems including operation planning and orbit calculation of satellite ground operation systems, operation support for experimental activities on the Japanese Experiment Module (JEM) of the International Space Station (ISS) and research cooperation for development of Environmental Control and Life Support System (ECLSS) equipment." ]
        , a [ href "http://www.space-sd.co.jp", target "_blank" ]
            [ h3 [] [ text "SSD HP|宇宙システム開発株式会社" ]
            , text "http://www.space-sd.co.jp"
            ]
        ]


viewSilver : Html msg
viewSilver =
    section [ class "sponsors" ]
        [ h2 [] [ text "シルバースポンサー" ]
        , h3 [] [ text "合同会社Yspace 様" ]
        , img [ src "../assets/images/sponsors/YspaceLogo.png" ] []
        , a [ href "http://yspace-llc.com", target "_blank" ]
            [ h3 [] [ text "Yspace – Connect our space. Connect our hearts" ]
            , text "http://yspace-llc.com"
            ]
        ]


viewBronze : Html msg
viewBronze =
    section [ class "sponsors" ]
        [ h2 [] [ text "ブロンズスポンサー" ]
        , h3 [] [ text "スペースアクセス株式会社 様" ]
        , img [ src "../assets/images/sponsors/SpaceAccessLogo.jpg" ] []
        ]


viewSpecialThanks : Html msg
viewSpecialThanks =
    section [ class "sponsors" ]
        [ h2 [] [ text "Special Thanks" ]
        , p [] [ text "クラウドファンディングへのご支援ありがとうございました！" ]
        , h3 [] [ text "片山勇 / 雅美" ]
        , p [] [ text "I and my family get interested in space recently! I am happy that I can support a nice project." ]
        , h3 [] [ text "山口博則 / 陽" ]
        , p [] [ text "Life isn’t worth living, unless it is lived for someone else." ]
        , h3 [] [ text "沖村 明" ]
        , h3 [] [ text "片山 郁海 / 明子" ]
        ]
