
#	Prompt for the app to install
printf "Which Rails application would you like to install?\n"
printf "1. El Dorado\n"
printf "2. Spree\n"
printf "3. Typo\n"
printf "Default (3): " ; read RAILS_APPLICATION

case $RAILS_APPLICATION in
1)
	wget --timeout=10 --waitretry=1 http://github.com/mmond/configuration-automation/raw/be814b9c6d5ebca8298dc99cbfbb4b8e15fd5667/apps/eldorado.sh
	source eldorado.sh
	;;
2)
source radiant.conf
	;;
3)
source radiant.conf
	;;
*)
	echo $RAILS_APPLICATION: unknown option >&2
	exit 1
	;;
esac

exit 1