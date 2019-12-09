# up
	function up_widget() {
		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
	bindkey "^k" up_widget

# git
	function git_prepare() {
		if [ -n "$BUFFER" ];
			then
				BUFFER="git commit -am \"$BUFFER\""
		fi
				
		zle accept-line
	}
	zle -N git_prepare
	bindkey "^g" git_prepare

	function git_checkout(){
		BUFFER="git checkout master && git pull"
		zle accept-line
	}
	zle -N git_checkout
	bindkey "^q" git_checkout

# Edit and rerun
	function edit_and_run() {
		BUFFER="fc"
		zle accept-line
	}
	zle -N edit_and_run
	bindkey "^v" edit_and_run

# LS
	function ctrl_l() {
		BUFFER="ls"
		zle accept-line
	}
	zle -N ctrl_l
	bindkey "^l" ctrl_l

# Enter
	function enter_line() {
		zle accept-line
	}
	zle -N enter_line
	bindkey "^o" enter_line

# Sudo
	function add_sudo() {
		BUFFER="sudo "$BUFFER
		zle end-of-line
	}
	zle -N add_sudo
	bindkey "^s" add_sudo
	
	# Home - Navigates to the current root workspace
	function git_root() {
		BUFFER="cd $(git rev-parse --show-toplevel || echo ".")"
		zle accept-line
	}
	zle -N git_root
	bindkey "^h" git_root
