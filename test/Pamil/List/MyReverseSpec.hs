module Pamil.List.MyReverseSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
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

    it "returns empty list if empty list is given" $ do
      myReverse ([] :: [Int]) `shouldBe` ([] :: [Int])

    it "returns values with the same length" . property $
      \s -> let _ = (s :: String) in
        length (myReverse s) == length s

    it "returns the same value if applied twice" . property $
      \s -> let _ = (s :: String) in
        myReverse (myReverse s) == s
