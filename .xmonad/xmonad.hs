import System.IO
import XMonad
import XMonad.Util.Run (spawnPipe)

main = do
  spawnPipe ("xmobar ~/.xmonad/xmobarrc")
  xmonad defaultConfig
