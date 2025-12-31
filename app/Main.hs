module Main where

import Color (color, writeColor)
import System.IO (IOMode (WriteMode), hClose, hPutStrLn, openFile)
import Text.Printf (printf)

filePath :: String
filePath = "images/test.ppm"

imageWidth :: Double
imageWidth = 256.0

imageHeight :: Double
imageHeight = 256.0

main :: IO ()
main = do
  handle <- openFile filePath WriteMode

  hPutStrLn handle $ printf "P3\n%.0f %.0f\n255" imageWidth imageHeight

  -- Create "Hello, World!" gradient graphic.
  let colors = [color (r / (imageWidth - 1)) (g / (imageHeight - 1)) 0 | g <- [0 .. imageWidth - 1], r <- [0 .. imageHeight - 1]]

  mapM_ (writeColor handle) colors

  hClose handle
