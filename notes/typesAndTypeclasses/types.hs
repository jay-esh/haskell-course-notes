
data Shape = Circle {center :: (Float, Float)
                    , radius :: Float} |
             Rect {length' :: Float
                 , width :: Float} deriving (Show)

areaofrect :: Shape -> Float
areaofrect rect = length' rect * width rect 

areaofcircle :: Shape -> Float
areaofcircle circle = pi * (radius circle)^2


