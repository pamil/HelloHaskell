module Pamil.List.FlattenSpec (main, spec) where

import Test.Hspec
import Pamil.List.Flatten

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "flatten" $ do
    it "flattens a single element" $ do
      flatten (Elem 5) `shouldBe` [5]

    it "flattens an empty list" $ do
      flatten (List [] :: NestedList Int) `shouldBe` ([] :: [Int])

    it "flattens a list" $ do
      flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` [1, 2, 3, 4, 5]
