import System.IO
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig (additionalKeys)
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
    , startupHook = startup
    } `additionalKeys`
    [ ((modMask defaultConfig, xK_Print), spawn "scrot screenshots/screen_%Y-%m-%d-%H-%M-%S.png -d 1")
    ]


startup :: X ()
startup = do
  spawn "xscreensaver -no-splash"
