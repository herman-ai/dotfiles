# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
. ~/.bash_profile


. /etc/profile.d/modules.sh
[ -e /usr/share/Modules/modulefiles ] && module unuse /usr/share/Modules/modulefiles
[ -e /tools/modulefiles ] && module use /tools/modulefiles
[ -e /opt/modulefiles ]   && module use /opt/modulefiles
module load common astyle scl
