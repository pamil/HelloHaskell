module Pamil.List.MyButLastSpec (main, spec) where

import Test.Hspec
import Pamil.List.MyButLast

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myButLast" $ do
    it "returns the first element of a two-element integer list" $ do
      myButLast [1, 2] `shouldBe` 1

    it "returns the last but one element of an integer list" $ do
      myButLast [1, 2, 3, 4] `shouldBe` 3

    it "returns the last but one element of a string" $ do
      myButLast "Hello!" `shouldBe` 'o'
