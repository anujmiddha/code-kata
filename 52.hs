import Data.List

hasSameDigits x y = sort ( show x ) == sort ( show y )

startsWith1 x = head (show x) == '1'

validNumber x = hasSameDigits x (2*x) && hasSameDigits x (3*x) && hasSameDigits x (4*x) && hasSameDigits x (5*x) && hasSameDigits x (6*x)

findNumber = head (filter validNumber (filter startsWith1 [1..]))
