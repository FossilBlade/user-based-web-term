arg_sent=$1

is_tmux_installed=$(dpkg -s tmux|grep installed)
echo Checking for tmux: $is_tmux_installed
if [ -z "$is_tmux_installed" ]; then
    echo "No tmux. Setting up tmux"
    apt-get update && apt-get -y install tmux
        # tmux new -d -s mySession
fi

test=`tmux new-session -d -s mySession`

if [ ! -z "$arg_sent" ]; then

        tmux send-keys -t mySession.0 "$arg_sent" ENTER
fi


[ -z $TMUX ] && tmux a -t mySession
