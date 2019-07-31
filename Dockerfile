FROM opensuse/tumbleweed:latest
MAINTAINER Rubén Torrero Marijnissen <rtorreromarijnissen@suse.com>

RUN zypper -n install systemd iproute2 libnl3-200 sysconfig-netconfig util-linux-systemd sysconfig gdbserver; zypper clean 

CMD ["/usr/lib/systemd/systemd", "--system"]
