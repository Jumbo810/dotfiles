# ~/.bash_logout: executed by bash(1) when login shell exits.

# Clear console when shell exits.
if [ "$SHLVL" = 1 ]; then
	case "$(tty)" in
		/dev/tty[0-9])
			if [ -x "$(command -v clear_console)" ]; then
				clear_console -q
			fi
		;;
		*)
			if [ -x "$(command -v clear)" ]; then
				clear
				printf '\033[3J'
			fi
		;;
	esac
fi
