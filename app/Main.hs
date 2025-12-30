import System.IO
import Text.Printf (printf)

main :: IO ()
main = do
  handle <- openFile "images/test.ppm" WriteMode

  let imageWidth = 256
      imageHeight = 256

  hPutStrLn handle ("P3\n" ++ show imageWidth ++ " " ++ show imageHeight ++ "\n255")

  let pixels = [Pixel r g 0 | g <- [0 .. imageWidth - 1], r <- [0 .. imageHeight - 1]]
  hPutStr handle $ unlines $ map show pixels

  hClose handle

data Pixel = Pixel Int Int Int

instance Show Pixel where
  show (Pixel r g b) = printf "%d %d %d" r g b
