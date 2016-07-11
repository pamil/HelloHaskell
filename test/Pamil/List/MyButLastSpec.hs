module Pamil.List.MyButLastSpec (main, spec) where

import Test.Hspec
import Pamil.List (myButLast)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myButLast" $ do
    it "returns first element of a two-element integer array" $ do
      myButLast [1, 2] `shouldBe` 1

    it "returns last but one element of an integer array" $ do
      myButLast [1, 2, 3, 4] `shouldBe` 3

    it "returns last but one element of a string array" $ do
      myButLast "Hello!" `shouldBe` 'o'
