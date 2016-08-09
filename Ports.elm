port module Ports exposing(..)

-- Uncomment this line to avoid the exception
--import Json.Decode exposing(..)

port configure : String -> Cmd m

port updateModel : (String -> msg) -> Sub msg 