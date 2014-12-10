select SYSDATE-logon_time "Days", (SYSDATE-logon_time)*24 "Hours"
from   sys.v_$session
where  sid=1 /* this is PMON */
/