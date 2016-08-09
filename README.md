# sscce-elm-ports-uncaughtError

this is a minimal example for an exception I experience with Elm 0.17.1, core 4.0.3.

to run the example, do the following:

1. elm-make App.elm --output=elm.js
2. elm reactor
3. goto localhost/8000
4. open the index.html file from this page

Alternatively, you can just open index.html locally once there exists elm.js.

In any case, click the div on the page. This leads to an exception:

![exception](https://github.com/RobertWalter83/sscce-elm-ports-uncaughtError/blob/master/ex.png)

If you go to the file Ports.elm, uncomment the import of Json.Decode, this exception does not occur.
