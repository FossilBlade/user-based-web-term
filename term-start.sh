arg_sent=$1

is_tmux_installed=$(dpkg -s tmux|grep installed)
# echo Checking for tmux: $is_tmux_installed
if [ -z "$is_tmux_installed" ]; then
    echo "No tmux. Setting up tmux"
    apt-get update && apt-get -y install tmux
        # tmux new -d -s mySession
fi

# Create new, if already exists it will show dulicate error and wont print on screen.
tmux new-session -d -s mySession > /dev/null 2>&1
[ -z $TMUX ] || tmux set-option -g prefix None > /dev/null 2>&1

if [ ! -z "$arg_sent" ]; then

        tmux send-keys -t mySession.0 "$arg_sent" ENTER
fi

[ -z $TMUX ] && tmux a -t mySession
