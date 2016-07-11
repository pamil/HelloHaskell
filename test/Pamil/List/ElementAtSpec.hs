module Pamil.List.ElementAtSpec (main, spec) where

import Test.Hspec
import Pamil.List.ElementAt

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "elementAt" $ do
    it "returns element of an integer list placed at a given position" $ do
      elementAt [1, 2, 3, 4, 5] 2 `shouldBe` 2

    it "returns element of a string placed at a given position" $ do
      elementAt "Haskell" 5 `shouldBe` 'e'
