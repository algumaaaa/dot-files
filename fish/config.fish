source /usr/share/cachyos-fish-config/cachyos-config.fish

alias journal='cd /home/helena/Documents/Journal/'
alias projects='cd /home/helena/Documents/Projects/'
alias taxista='cd /home/helena/Documents/Projects/Godot/taxista/src'

export EDITOR=nvim

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
