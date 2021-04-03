#!/usr/bin/env dash
bwrap \
        --ro-bind /usr /usr \
        --ro-bind /etc /etc \
        --ro-bind /lib /lib  \
        --ro-bind /lib64 /lib64 \
        --ro-bind "/home/admin/uniswap-python" "/home/admin/uniswap-python" \
        --ro-bind "/home/admin/ccxt/python" "/home/admin/ccxt/python" \
        --ro-bind "/home/admin/uniswap-python/.insecure_venv/" "/home/admin/uniswap-python/.insecure_venv/" \
        --ro-bind "/home/admin/uniswap-python/uniswap.egg-info/" "/home/admin/uniswap-python/uniswap.egg-info/" \
        --ro-bind "/home/admin/uniswap-python/_ccxt.egg-info/" "/home/admin/ccxt/python/ccxt.egg-info/" \
        --dev /dev \
        --unshare-user \
        --unshare-ipc \
        --unshare-pid \
        --unshare-uts \
        --unshare-cgroup \
        --new-session \
        --die-with-parent \
        "${@}"
