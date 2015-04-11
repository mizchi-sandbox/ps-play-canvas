module Main where
import Debug.Trace

import Data.Maybe.Unsafe (fromJust)
import Data.Array (concatMap)
import Control.Monad (foldM)
import Control.Monad.Eff
import Graphics.Canvas hiding (translate)

main = do
  canvas <- fromJust <$> getCanvasElementById "canvas"
  ctx <- getContext2D canvas

  beginPath ctx
  setStrokeStyle "#000000" ctx
  moveTo ctx 10 10
  lineTo ctx 20 20
  stroke ctx
