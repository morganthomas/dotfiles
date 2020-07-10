import System.IO
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)

main = do
  xmproc <- spawnPipe ("xmobar /home/morgan/.xmonad/xmobarrc")
  xmonad $ defaultConfig
    { manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    , handleEventHook = handleEventHook defaultConfig <+> docksEventHook
    , logHook = dynamicLogWithPP defaultPP
        { ppOutput = hPutStrLn xmproc
        , ppVisible = wrap "(" ")"
        }
    , terminal = "tilix"
    }
