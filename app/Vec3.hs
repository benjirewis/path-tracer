module Vec3 where

import Text.Printf (printf)

data Vec3 = Vec3 Int Int Int

instance Show Vec3 where
  show (Vec3 r g b) = printf "%d %d %d" r g b
