module Pamil.List.MyLastSpec (main, spec) where

import Test.Hspec
import Pamil.List (myLast)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLast" $ do
    it "returns last element of an integer array" $ do
      myLast [1, 2, 3, 4] `shouldBe` 4

    it "returns last element of a string array" $ do
      myLast "Hello!" `shouldBe` '!'
