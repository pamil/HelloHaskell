module Pamil.List.IsPalindromeSpec (main, spec) where

import Test.Hspec
import Pamil.List.IsPalindrome

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "isPalindrome" $ do
        it "returns if string is a palindrome" $ do
            isPalindrome "kayak" `shouldBe` True

        it "returns if string is not a palindrome" $ do
            isPalindrome "Kayak" `shouldBe` False

        it "returns if an integer list is a palindrome" $ do
            isPalindrome [1, 2, 3, 2, 1] `shouldBe` True

        it "returns if an integer list is not a palindrome" $ do
            isPalindrome [1, 2, 3, 4, 5] `shouldBe` False
