conn / as sysdba

select grantee, privilege, admin_option
from   sys.dba_sys_privs 
where  (privilege like '% ANY %'
  or   privilege in ('BECOME USER', 'UNLIMITED TABLESPACE')
  or   admin_option = 'YES')
 and   grantee not in ('SYS', 'SYSTEM', 'OUTLN', 'AQ_ADMINISTRATOR_ROLE',
                       'DBA', 'EXP_FULL_DATABASE', 'IMP_FULL_DATABASE',
                       'OEM_MONITOR', 'CTXSYS', 'DBSNMP', 'IFSSYS',
                       'IFSSYS$CM', 'MDSYS', 'ORDPLUGINS', 'ORDSYS',
                       'TIMESERIES_DBA')
/