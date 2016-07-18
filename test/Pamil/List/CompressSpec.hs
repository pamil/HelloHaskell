module Pamil.List.CompressSpec (main, spec) where

import Test.Hspec
import Pamil.List.Compress

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "compress" $ do
        it "compresses string" $ do
            compress "aaabbcdddeef" `shouldBe` "abcdef"

        it "compresses an integer list" $ do
            compress [1, 1, 2, 1, 3, 3, 3, 4, 4] `shouldBe` [1, 2, 1, 3, 4]
