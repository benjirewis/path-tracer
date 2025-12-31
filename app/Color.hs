module Color
  ( color,
    writeColor,
  )
where

import System.IO (Handle, hPutStrLn)
import Text.Printf (printf)
import Vector (Vec3 (..))

color :: Double -> Double -> Double -> Vec3
color = Vec3

upperLimit :: Double
upperLimit = 255.999

writeColor :: Handle -> Vec3 -> IO ()
writeColor handle (Vec3 r g b) = do
  -- Translate the [0,1] component values to the byte range [0,255].
  let rInt = floor (upperLimit * r) :: Int
  let gInt = floor (upperLimit * g) :: Int
  let bInt = floor (upperLimit * b) :: Int
  -- Write color components to handle.
  hPutStrLn handle $ printf "%d %d %d" rInt gInt bInt
