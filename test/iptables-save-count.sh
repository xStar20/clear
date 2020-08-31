count=$(sudo iptables-save | grep '^\-' | wc -l)
if [ $count -ne 0 ]; then
    sudo iptables-save
    echo "ERR! There are $count rule(s) in iptables."
    exit 1
fi
