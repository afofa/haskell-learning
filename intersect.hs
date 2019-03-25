import Graphics.Gloss.Data.Point
import Graphics.Gloss.Geometry.Line

data Line = L Point Point

intersection_of_two_lines (L a b) (L c d) = intersectLineLine a b c d