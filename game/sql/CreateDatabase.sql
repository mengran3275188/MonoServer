##############################################################################
# create database dsnode 
##############################################################################
drop database if exists dsnode;
create database dsnode default character set utf8 collate utf8_general_ci;

grant all privileges on dsnode.* to 
'dfds'@'%' identified by 'dfds';

# Initialize table DSNodeInfo and procedures.
use dsnode;
create table DSNodeInfo
(
  DSKey char(64) not null,
  DSValue char(255) not null,  
  primary key (DSKey)
) ENGINE=InnoDB;

delimiter $$
create procedure GetDSNodeVersion(out dsversion char(10))
begin
  select DSValue from DSNodeInfo where DSKey = 'DSNodeVersion' limit 1 into dsversion;
end $$

create procedure SetDSNodeVersion(in dsversion char(10))
begin
  replace into DSNodeInfo(DSKey, DSValue) values ('DSNodeVersion', dsversion); 
end $$
delimiter ;

# GlobalDataVersion存储过程
delimiter $$
create procedure GetGlobalDataVersion(out dataVersion int)
begin 
  declare dataVersionStr char(32); 
  select DSValue from DSNodeInfo where DSKey = 'GlobalDataVersion' limit 1 into dataVersionStr; 
  set dataVersion = dataVersionStr + 0;
end $$

create procedure SetGlobalDataVersion(in dataVersion int)
begin
  declare dataVersionStr char(32);
  set dataVersionStr = concat(dataVersion, '');  
  replace into DSNodeInfo(DSKey, DSValue) values ('GlobalDataVersion', dataVersionStr); 
end $$
delimiter ;

call SetGlobalDataVersion(1);
