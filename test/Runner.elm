module Main where

import String

import IO.IO exposing (..)
import IO.Runner exposing (Request, Response, run)
import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Console exposing (runDisplay)


tests : Test
tests = suite "A Test Suite"
        [ test "Addition" (assertEqual (3 + 7) 10)
        , test "String.left" (assertEqual "a" (String.left 1 "abcdefg"))
        ]


port requests : Signal Request
port requests = run responses (runDisplay tests)


port responses : Signal Response