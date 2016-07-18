module Pamil.List.FizzBuzzSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
import Pamil.List.FizzBuzz

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "fizzBuzz" $ do
        it "number not divisible by 5 but divisible by 3 will return Fizz" . property $
            \n ->
                if n `mod` 3 == 0 && n `mod` 5 /= 0 then
                    fizzBuzz n == "Fizz"
                else
                    fizzBuzz n /= "Fizz"

        it "number not divisible by 3 but divisible by 5 will return Buzz" . property $
            \n ->
                if n `mod` 5 == 0 && n `mod` 3 /= 0 then
                    fizzBuzz n == "Buzz"
                else
                    fizzBuzz n /= "Buzz"

        it "number divisible by 15 will return FizzBuzz" . property $
            \n ->
                if n `mod` 15 == 0 then
                    fizzBuzz n == "FizzBuzz"
                else
                    fizzBuzz n /= "FizzBuzz"

        it "number not divisible by neither 3 nor 5 will return its string representation" . property $
            \n ->
                if n `mod` 3 /= 0 && n `mod` 5 /= 0 then
                    fizzBuzz n == show n
                else
                    fizzBuzz n /= show n
