module Pamil.List.QuicksortSpec (main, spec) where

import Test.Hspec
import Pamil.List.Quicksort

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "quicksort" $ do
        it "sorts integer list" $ do
            quicksort [4, 1, 5, 2, 1, 7, 9, 0] `shouldBe` [0, 1, 1, 2, 4, 5, 7, 9]
