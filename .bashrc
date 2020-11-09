source `nix eval nixpkgs.vte.outPath | sed -e 's/\"//g'`/etc/profile.d/vte.sh
export PATH=/home/morgan/.local/bin:/usr/local/bin:$PATH
alias s11warp="ns -p haskellPackages.wai-app-static --command \"warp -d result/bin/snowman.jsexe -p 8080\""
alias nb=nix-build
alias ns=nix-shell
alias sa="ssh-add ~/.ssh/platonic"
alias chrnosec="chromium --disable-web-security --user-data-dir=/home/morgan/.config/chromium-nosec"
[ -e ~/.bashrc.private ] && source ~/.bashrc.private
alias docker-clean="docker container prune && docker image prune -af"

