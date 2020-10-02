source `nix eval nixpkgs.vte.outPath | sed -e 's/\"//g'`/etc/profile.d/vte.sh
#GMP_PATH=`nix eval --raw nixpkgs.gmp`/lib
#CURSES_PATH=`nix eval --raw nixpkgs.ncurses5`/lib
#ZLIB_PATH=`nix eval --raw nixpkgs.zlib`/lib
#ZLIB_INCLUDE_PATH=`nix eval --raw nixpkgs.zlib.dev`/include
#PCRE_PATH="/nix/store/zg3cs9bzfnrv0wf1bqr39dg90zy88b7d-pcre-8.42/lib"
#PCRE_INCLUDE_PATH=`nix eval --raw nixpkgs.pcre.dev`/include
#export LD_LIBRARY_PATH=$GMP_PATH:$CURSES_PATH:$ZLIB_PATH:$PCRE_PATH:$LD_LIBRARY_PATH
#export LIBRARY_PATH=$GMP_PATH:$CURSES_PATH:$ZLIB_PATH:$PCRE_PATH:$LIBRARY_PATH
#export C_INCLUDE_PATH=$ZLIB_INCLUDE_PATH:$C_INCLUDE_PATH:$PCRE_INCLUDE_PATH
GLIB_PATH=/nix/store/6j9v0jcx2pdins58ask9drg66g3ih0dm-glib-2.62.6/lib
NSS_PATH=/nix/store/cq8ncwkmwhm77f9pigc1sqjjv8hanyfp-nss-3.49.2/lib
NSPR_PATH=/nix/store/pvz5vzgziyr7aib49xvlvlrm8c2dlsi5-nspr-4.25/lib
LIBX11_PATH=/nix/store/7563czahvq56fq3a486w2x2vr9r63j1g-libX11-1.6.8/lib
LIBXCB_PATH=/nix/store/722bbaq4q35a959wxm9c1g5czdychwkw-libxcb-1.13.1/lib
export LD_LIBRARY_PATH=$GLIB_PATH:$NSS_PATH:$NSPR_PATH:$LIBX11_PATH:$LIBXCB_PATH:$LD_LIBRARY_PATH
export PATH=/home/morgan/.local/bin:/usr/local/bin:$PATH
alias s11warp="ns -p haskellPackages.wai-app-static --command \"warp -d result/bin/snowman.jsexe -p 8080\""
alias nb=nix-build
alias ns=nix-shell
alias sa="ssh-add ~/.ssh/platonic"
alias chrnosec="chromium --disable-web-security --user-data-dir=/home/morgan/.config/chromium-nosec"
[ -e ~/.bashrc.private ] && source ~/.bashrc.private
alias docker-clean="docker container prune && docker image prune -af"

