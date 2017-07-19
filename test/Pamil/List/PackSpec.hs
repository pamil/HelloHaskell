module Pamil.List.PackSpec (main, spec) where

import Test.Hspec
import Pamil.List.Pack

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "pack" $ do
        it "packs a string list" $ do
            pack "aaaabccaadeeee" `shouldBe` ["aaaa", "b", "cc", "aa", "d", "eeee"]

    describe "pack'" $ do
        it "packs a string list" $ do
            pack "aaaabccaadeeee" `shouldBe` ["aaaa", "b", "cc", "aa", "d", "eeee"]