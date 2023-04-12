import System.IO
import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Util.Run (spawnPipe)

main = do
  xmproc <- spawnPipe ("xmobar /home/morgan/.xmonad/xmobarrc")
  xmonad $ def
    { manageHook = manageDocks <+> manageHook def
    , layoutHook = avoidStruts $ layoutHook def
    , terminal = "tilix"
    , startupHook = startup
    } `additionalKeys`
    [ ((modMask def, xK_Print), spawn "scrot screenshots/screen_%Y-%m-%d-%H-%M-%S.png -d 1")
    ]


startup :: X ()
startup = do
  spawn "xscreensaver -no-splash"
