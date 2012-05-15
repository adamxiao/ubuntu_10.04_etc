#! /bin/bash

# adam used only
alias va='vi'
alias mk='make 2>&1 | vim -'
# crm相关
alias conn48='ssh crm20c@192.168.167.48'
alias conn44='ssh bill@134.64.110.44'
alias conn45='ssh tuxedo@134.64.110.45'
alias conn83='ssh tuxedo@134.64.110.83'

# oracle数据库相关
alias goDBconf='cd /home/crm20/oracle/product/10.2.0/db_1/network/admin'

alias connDB_me='sqlplus crm20_c/crm20c@ORCL'
alias connDB='sqlplus dic_551/dic_551@GZ_CRM'
alias connDB_crm20_c='sqlplus crm20_c/crm20c@GZ_CRM'
alias connDB_45_conf='sqlplus crm20_pub/pub2011@CRMTEST_18'
alias connDB_45_inst='sqlplus crm20_ins/ins2011@CRMTEST_18'
alias connDB_85_conf='sqlplus gj_pub/pub2011@CRMTEST_18'
alias connDB_85_inst='sqlplus gj_ins/gj_ins@CRMTEST_18'



# crm20设置的快捷命令
DEV_HOME=/crm20c_background/dev
alias gosrc='cd $DEV_HOME/src'
alias gobin='cd $DEV_HOME/release/bin'
alias golib='cd $DEV_HOME/release/lib64'
alias golog='cd $DEV_HOME/release/log'


# others work command
alias conn176='rdesktop -u huangh -p - 192.168.166.176 -r disk:home=/home/adam'
#alias conn176='rdesktop -u huangh -p - 192.168.166.176 -fD -r disk:home=/home/adam'