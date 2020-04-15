module ReverseString exposing (reverse, tests)

import Expect
import Test exposing (..)


reverse : String -> String
reverse input =
    String.join "" (List.foldl (::) [] (String.split "" input))


tests : Test
tests =
    describe "reverse string"
        [ test "should reverse the input string" <|
            \() -> Expect.equal "foobar" (reverse "raboof")
        ]
