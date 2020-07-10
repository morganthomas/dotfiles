import XMonad
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar def { commands = [ Run MultiCpu [ "--template", "Cpu: <total 0>%|<total1>%"
                                                         , "--Low",      "50"
                                                         , "--High",     "85"
                                                         , "--low",      "darkgreen"
                                                         , "--normal",   "darkorange"
                                                         , "--high",     "darkred" ] 10

                                          , Run Memory  [ "--template", "Mem: <usedratio>%"
                                                        , "--Low",      "20"
                                                        , "--High",     "80"
                                                        , "--low",      "darkgreen"
                                                        , "--normal",   "darkorange"
                                                        , "--high",     "darkred" ] 10

                                          , Run Swap   [ "--template", "Swp: <usedratio>%"
                                                       , "--Low",      "20"
                                                       , "--High",     "60"
                                                       , "--low",      "darkgreen"
                                                       , "--normal",   "darkorange"
                                                       , "--high",     "darkred" ] 10

                                          , Run DiskU  [ ("/", "<usedbar>") ] [] 10

                                          , Run DiskIO [ ("/", "<read> <write>") ] [] 10

                                          , Run Date    "<fc=#ABABAB>%F (%a) %T</fc>" "date" "10"

                                          , Run Kbd     [ ("us(dvorak)", "<fc=#000088>DV</fc>")
                                                        , ("us",         "<fc=#880000>US</fc>") ]

                                          , Run Locks
                                          ] }
