module Pamil.List.MyLastSpec (main, spec) where

import Test.Hspec
import Pamil.List.MyLast

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLast" $ do
    it "returns the last element of an integer list" $ do
      myLast [1, 2, 3, 4] `shouldBe` 4

    it "returns the last element of a string" $ do
      myLast "Hello!" `shouldBe` '!'
