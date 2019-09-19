module Page.TopPage exposing (topPage)

import Browser
import Html exposing (Html, a, br, div, h1, h2, h3, h4, iframe, img, li, nav, node, p, section, span, table, td, text, th, tr, ul)
import Html.Attributes exposing (attribute, class, href, src, target)


topPage : Html msg
topPage =
    node "main"
        []
        [ viewLatestNews
        , div [ class "cover" ] []
        , viewVision
        , viewTeam
        , viewCompany
        , viewContact
        ]


viewLatestNews : Html msg
viewLatestNews =
    nav [ class "news" ]
        [ a [ href "/sxsw" ]
            [ span [] [ text "2019.08.20" ]
            , text "大田区の2019年度「スタートアップとものづくり企業の連携創出実証実験事業」に採択されました！"
            ]
        ]


viewVision : Html msg
viewVision =
    section [ class "vision" ]
        [ h1 [] [ text "vision" ]
        , h2 []
            [ text "あなたをどこにでも住めるようにする。"
            , br [] []
            , text "そう、それが宇宙でもね。"
            ]
        , p []
            [ text "私たちは宇宙建築というマニアックな学術分野に興味を持った学生の集まりから始まりました。"
            , text "宇宙に興味を持ったきっかけは、純粋な憧れ、特殊なフィールドとしての興味、ガンダム等の作品であったりと様々。"
            , text "ですが、強く共通していたのは人の未来を変える可能性を宇宙に感じていたことでした。"
            ]
        , p []
            [ text "私たちはその想いの根源がどこにあるのかを語り合い、"
            , br [] []
            , text "「宇宙には現在の常識を抜け出す力がある」という結論を得ました。"
            ]
        , p []
            [ text "いま、宇宙開発の潮流が目まぐるしく変わる中で、人類は大きな分岐点に立っています。"
            ]
        , p []
            [ text "「地球を抜け出し宇宙に進むことで、人類の可能性を広げたい。」"
            , br [] []
            , text "この想いを人生をかけてでも実現したいという「変わり者たち」によって、OUTSENSEが作られました。"
            ]
        ]


viewTeam : Html msg
viewTeam =
    section [ class "team" ]
        [ h1 [] [ text "Team" ]
        , ul []
            [ li []
                [ img [ src "../assets/images/team/YozanTakahashi.jpg" ] []
                , h3 []
                    [ span [] [ text "代表取締役社長 CEO" ]
                    , text "Yozan Takahashi"
                    ]
                ]
            , li []
                [ img [ src "../assets/images/team/AkioIto.jpg" ] []
                , h3 []
                    [ span [] [ text "COO" ]
                    , text "Akio Ito"
                    ]
                ]
            , li []
                [ img [ src "../assets/images/team/ShugaHorii.jpg" ] []
                , h3 []
                    [ span [] [ text "CDO" ]
                    , text "Shuga Horii"
                    ]
                ]
            , li []
                [ img [ src "../assets/images/team/ShintaroIshimatsu.jpg" ] []
                , h3 []
                    [ span [] [ text "CTO" ]
                    , text "Shintaro Ishimatsu"
                    ]
                ]
            ]
        ]


viewCompany : Html msg
viewCompany =
    section [ class "company" ]
        [ h1 []
            [ text "Company" ]
        , div []
            [ iframe
                [ src "https://www.youtube.com/embed/XBXnyLqSkXw"
                , attribute "frameborder" "0"
                , attribute "allow" "accelerometer, autoplay; encrypted-media; gyroscope; picture-in-picture"
                , attribute "allowfullscreen" ""
                ]
                []
            ]
        , table []
            [ tr []
                [ th [] [ text "会社名" ]
                , td [] [ text "株式会社OUTSENSE / OUTSENSE, inc." ]
                ]
            , tr []
                [ th [] [ text "代表" ]
                , td [] [ text "高橋 鷹山" ]
                ]
            , tr []
                [ th [] [ text "設立" ]
                , td [] [ text "2018年 8月" ]
                ]
            , tr []
                [ th [] [ text "所在地" ]
                , td []
                    [ p []
                        [ text "〒160-0015"
                        , br [] []
                        , text "東京都新宿区大京町25-3 キングダム御苑804"
                        ]
                    , p []
                        [ a
                            [ href "https://www.google.com/maps/place/OUTSENSE+本社/@35.6848207,139.7140409,17z/data=!4m8!1m2!2m1!1z5qCq5byP5Lya56S-T1VUU0VOU0U!3m4!1s0x60188d95f8beee55:0xc72e19cc73fb535f!8m2!3d35.6847758!4d139.7161496?hl=ja-JP"
                            , target "_blank"
                            ]
                            [ text "GoogleMapで開く" ]
                        ]
                    ]
                ]
            , tr []
                [ th [] [ text "事業概要" ]
                , td []
                    [ text "折り紙構造物を用いた、"
                    , ul []
                        [ li [] [ text "月居住施設の販売とホテル事業" ]
                        , li [] [ text "月施設の構築とリース事業" ]
                        , li [] [ text "宇宙での空間デザイン" ]
                        , li [] [ text "地上での空間デザイン" ]
                        , li [] [ text "製品デザイン & 製品開発" ]
                        ]
                    ]
                ]
            ]
        ]


viewContact : Html msg
viewContact =
    section []
        [ h1 []
            [ text "Contact" ]
        , p [] [ text "お問い合わせはこちら" ]
        , a [ href "mailto:info@outsense.jp" ]
            [ h4 [] [ text "株式会社OUTSENSE / OUTSENSE, inc." ]
            , text "info@outsense.jp"
            ]
        ]
