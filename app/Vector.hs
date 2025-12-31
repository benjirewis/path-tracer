module Vector
  ( Vec3 (..),
    point,
    add,
    cross,
    dot,
    len,
    scl,
    sub,
  )
where

-- Data, constructor, and constructor aliases.

data Vec3 = Vec3
  { getX :: Double,
    getY :: Double,
    getZ :: Double
  }
  deriving (Eq, Show)

point :: Double -> Double -> Double -> Vec3
point = Vec3

-- Methods.

add :: Vec3 -> Vec3 -> Vec3
add (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1 + x2) (y1 + y2) (z1 + z2)

cross :: Vec3 -> Vec3 -> Vec3
cross (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) =
  Vec3 (y1 * z2 - z1 * y2) (z1 * x2 - x1 * z2) (x1 * y2 - y1 * x2)

dot :: Vec3 -> Vec3 -> Double
dot (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = x1 * x2 + y1 * y2 + z1 * z2

len :: Vec3 -> Double
len (Vec3 x y z) = sqrt $ x * x + y * y + z * z

scl :: Vec3 -> Double -> Vec3
scl (Vec3 x y z) factor = Vec3 (x * factor) (y * factor) (z * factor)

sub :: Vec3 -> Vec3 -> Vec3
sub (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1 - x2) (y1 - y2) (z1 - z2)
