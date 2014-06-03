import Data.Ratio
import Data.List

nmtr :: Integer -> [Integer]
nmtr n = [1..n] ++ (nmtr (n+1))

dnmtr :: Integer -> [Integer]
dnmtr n = [n, n-1..1] ++ (dnmtr (n+1))

hmyratios = (zip (nmtr 1) (dnmtr 1))
myratios = [ (a % b) | (a, b) <- hmyratios]

trueratios = nub myratios

cantor :: Int -> Rational
cantor n = trueratios !! (n-1)

