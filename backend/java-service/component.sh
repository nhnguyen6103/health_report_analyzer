#!\bin\bash

if [[ $# -eq 0 ]]
then
    echo "Run -h or --help for help usage"
fi

usage(){
    echo "Usage"
    echo
    echo "-b, --build     Build docker image"
    echo
    echo "-r, --run       Run container"
    echo
    echo "-t, --test      Test"
    echo
    echo "-d, --debug     Debug"
    echo
    echo "-s, --stop      Stop container"
    echo
    echo "-h, --help      Display this help"
}

while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -b|--build)
            echo "Build docker image"
            ;;
        -r|--run)
            echo "Run container"
            ;;
        -t|--test)
            echo "Test"
            ;;
        -d|--debug)
            echo "Debug"
            ;;
        -s|--stop)
            echo "Stop container"
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Invalid option: -$1"
            usage
            exit 1
            ;;
    esac
done