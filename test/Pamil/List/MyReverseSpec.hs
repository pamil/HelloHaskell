module Pamil.List.MyReverseSpec (main, spec) where

import Test.Hspec
import Pamil.List.MyReverse

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myReverse" $ do
    it "returns reversed string" $ do
      myReverse "Hello!" `shouldBe` "!olleH"

    it "returns reversed integer array" $ do
      myReverse [1, 2, 3] `shouldBe` [3, 2, 1]
