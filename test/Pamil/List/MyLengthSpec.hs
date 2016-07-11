module Pamil.List.MyLengthSpec (main, spec) where

import Test.Hspec
import Pamil.List (myLength)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLength" $ do
    it "returns length of an integer array" $ do
      myLength [1, 2, 3, 4] `shouldBe` 4

    it "returns length of a string" $ do
      myLength "Hello!" `shouldBe` 6

    it "returns length of a boolean array" $ do
      myLength [True, False] `shouldBe` 2
