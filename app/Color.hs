module Color
  ( color,
    writeColor,
  )
where

import System.IO (Handle, hPutStrLn)
import Vector (Vec3 (..))

color :: Double -> Double -> Double -> Vec3
color = Vec3

upperLimit :: Double
upperLimit = 255.999

writeColor :: Handle -> Vec3 -> IO ()
writeColor handle (Vec3 r g b) = do
  -- Translate the [0,1] component values to the byte range [0,255] and write them to
  -- handle.
  let toInt = floor . (* upperLimit) :: Double -> Int
  hPutStrLn handle $ unwords $ map (show . toInt) [r, g, b]
