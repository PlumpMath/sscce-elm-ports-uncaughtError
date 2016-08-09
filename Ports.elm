port module Ports exposing(..)
import Json.Decode exposing(..)

port configure : String -> Cmd m

port updateModel : (String -> msg) -> Sub msg 