main = do
  let imageWidth = 256
      imageHeight = 256
  putStrLn ("Starting program with image width " ++ show imageWidth ++ " and height " ++ show imageHeight)

-- putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10 .. 20]))

{-
doubleMe x = x + x

doubleSmallNumber x = if x > 100 then x else x * 2

densityTell density
  | density < 1.2 = "Wow! You're going for a ride in the sky!"
  | density <= 1000.0 = "Have fun swimming but watch out for sharks!"
  | otherwise = "If it's sink or swim, you're going to sink."
-}
