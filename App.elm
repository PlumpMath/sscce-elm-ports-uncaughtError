module App exposing (..)

import Ports exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as App
import Html.Events as Events


-- MODEL 


type alias Model =
    String


type Msg
    = UpdateModel String
    | ViewReady



-- MAIN


main : Program Never
main =
    App.program 
        { init = ( "Click me", Cmd.none )
        , view = view 
        , update = update
        , subscriptions = subscriptions
        }



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateModel contentNew ->
            ( Debug.log "content new" contentNew, Cmd.none )

        ViewReady ->
                ( Debug.log "content" model, configure "dummy" )



-- VIEW


view : Model -> Html Msg
view model =
    div [ id "container", width 200, height 200, Events.onClick ViewReady ]
        [ text model ]


subscriptions : Model -> Sub Msg
subscriptions model = 
    updateModel UpdateModel