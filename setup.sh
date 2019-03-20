# accept domain name and port number as argument

# sudo apt install curl
if [ $# -lt 1 ]; then
    echo 'No Domain Name is Specified!, Please Try with as domain Name'
    exit 1
fi
while [ $1 -ne "" ]; do
    case $1 in
    -d | --domain)
        shift
        DOMAIN=$1
        ;;
    -p | --port)
        shift
        PORT=$1
        ;;
    *) 
        exit 1;
    esac
    shift
done
./node.sh #run node sub module
./nginx.sh #run nginx sub module
# WRITE MODULE TO REPLACE A /location block on server configuration
echo 'setting up webserver for ${DOMAIN}'
