select *
 from sys.dba_segments
where owner not in ('PUBLIC', 'SYS', 'SYSTEM')
  and tablespace_name = 'SYSTEM'