case "$1" in
    start)
        screen -AmdS beammp ./BeamMP-Server-linux
        sleep 0.5
        echo The server was started
    ;;
    stop)
        screen -r beammp -X quit
        sleep 0.5
        echo The server was stopped
    ;;
    restart)
        screen -r v beammp -X quit
        sleep 0.5
        echo The server is restarted
        screen -AmdS beammp ./BeamMP-Server-linux
    ;;
    help)
        echo BeamMP unofficial script help
        echo
        echo to start the server:
        echo    ./server.sh start
        echo to stop the server:
        echo    ./server.sh stop
        echo to restart the server:
        echo    ./server.sh restart
        echo
        echo if the server does not start properly check if you have entered your authkey
    ;;
    terminal)
        screen -r beammp
    ;;
    *)
        echo "Invalid usage: ${0} {start | stop | restart | terminal |help}"
esac
