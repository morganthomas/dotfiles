source `nix eval nixpkgs.vte.outPath | sed -e 's/\"//g'`/etc/profile.d/vte.sh
GMP_PATH=`nix eval --raw nixpkgs.gmp`/lib
CURSES_PATH=`nix eval --raw nixpkgs.ncurses5`/lib
ZLIB_PATH=`nix eval --raw nixpkgs.zlib`/lib
ZLIB_INCLUDE_PATH=`nix eval --raw nixpkgs.zlib.dev`/include
export LD_LIBRARY_PATH=$GMP_PATH:$CURSES_PATH:$ZLIB_PATH:$LD_LIBRARY_PATH
export LIBRARY_PATH=$GMP_PATH:$CURSES_PATH:$ZLIB_PATH:$LIBRARY_PATH
export C_INCLUDE_PATH=$ZLIB_INCLUDE_PATH:$C_INCLUDE_PATH
export PATH=/usr/local/bin:$PATH
alias s11warp="ns -p haskellPackages.wai-app-static --command \"warp -d result/bin/snowman.jsexe -p 8080\""
alias nb=nix-build
alias ns=nix-shell
alias sa="ssh-add ~/.ssh/platonic"
alias chrnosec="chromium --disable-web-security --user-data-dir=/home/morgan/.config/chromium-nosec"
[ -e ~/.bashrc.private ] && source ~/.bashrc.private
alias docker-clean="docker container prune && docker image prune -af"
