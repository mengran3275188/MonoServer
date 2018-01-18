#----------------------------------------------------------------------------
#！！！不要手动修改此文件，此文件由LogicDataGenerator按DataProto/Data.dsl生成！！！
#----------------------------------------------------------------------------
#0.1.0
#  数据存储; Date:2016-03-31

call SetDSNodeVersion('0.1.0');

create table TableGlobalParam
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	ParamType varchar(32) binary not null,
	ParamValue varchar(64) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableGlobalParamPrimaryIndex on TableGlobalParam (ParamType);

create table TableGuid
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	GuidType varchar(24) binary not null,
	GuidValue bigint unsigned not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableGuidPrimaryIndex on TableGuid (GuidType);

create table TableNicknameInfo
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Nickname varchar(32) binary not null,
	Sex int not null,
	UserGuid bigint unsigned not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableNicknameInfoPrimaryIndex on TableNicknameInfo (Nickname);

create table TableAccount
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	AccountKey varchar(128) binary not null,
	IsBanned boolean not null,
	UserGuid1 bigint unsigned not null,
	HeroId1 int not null,
	Nickname1 varchar(32) not null,
	Level1 int not null,
	CitySceneId1 int not null,
	UserGuid2 bigint unsigned not null,
	HeroId2 int not null,
	Nickname2 varchar(32) not null,
	Level2 int not null,
	CitySceneId2 int not null,
	UserGuid3 bigint unsigned not null,
	HeroId3 int not null,
	Nickname3 varchar(32) not null,
	Level3 int not null,
	CitySceneId3 int not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableAccountPrimaryIndex on TableAccount (AccountKey);

create table TableUserInfo
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Guid bigint unsigned not null,
	AccountKey varchar(128) binary not null,
	Nickname varchar(32) not null,
	Sex int not null,
	HeroId int not null,
	CreateTime varchar(24) not null,
	Gold int not null,
	Diamond int not null,
	Vip int not null,
	Level int not null,
	Exp int not null,
	Score int not null,
	LastLogoutTime varchar(24) not null,
	ReadedMails varchar(32) not null,
	DeletedMails varchar(32) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableUserInfoPrimaryIndex on TableUserInfo (Guid);
create index TableUserInfoIndex on  TableUserInfo (AccountKey);

create table TableMailData
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Guid bigint unsigned not null,
	UserGuid bigint unsigned not null,
	Title varchar(64) not null,
	Text varchar(512) not null,
	CreateTime varchar(24) not null,
	IsRead boolean not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableMailDataPrimaryIndex on TableMailData (Guid);

create table TableTalentCardData
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Guid bigint unsigned not null,
	TalentCardId int not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableTalentCardDataPrimaryIndex on TableTalentCardData (Guid,TalentCardId);
create index TableTalentCardDataIndex on  TableTalentCardData (Guid);

create table TableFriendInfo
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	UserGuid bigint unsigned not null,
	FriendGuid bigint unsigned not null,
	Nickname varchar(32) not null,
	Level int not null,
	Sex int not null,
	ExtralInfo varchar(512) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableFriendInfoPrimaryIndex on TableFriendInfo (UserGuid,FriendGuid);
create index TableFriendInfoIndex on  TableFriendInfo (UserGuid);

create table TableRankInfo
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Guid bigint unsigned not null,
	RankType int not null,
	Sex int not null,
	Score int not null,
	Name varchar(32) not null,
	Rank int not null,
	MaxScore int not null,
	MaxRank int not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableRankInfoPrimaryIndex on TableRankInfo (Guid,RankType);
create index TableRankInfoIndex on  TableRankInfo (Guid,RankType);

create table TableFriendProcessCache
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	SenderGuid bigint unsigned not null,
	ReceiverGuid bigint unsigned not null,
	SenderName varchar(32) not null,
	SenderSex int not null,
	SenderLevel int not null,
	ExtraInfo varchar(512) not null,
	ProcessType int not null,
	ProcessResult int not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableFriendProcessCachePrimaryIndex on TableFriendProcessCache (SenderGuid,ReceiverGuid);
create index TableFriendProcessCacheIndex on  TableFriendProcessCache (SenderGuid);

create table TableUserQuestionAnswer
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	UserGuid bigint unsigned not null,
	Answer varchar(512) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableUserQuestionAnswerPrimaryIndex on TableUserQuestionAnswer (UserGuid);
create index TableUserQuestionAnswerIndex on  TableUserQuestionAnswer (UserGuid);

create table TableUserRegisterLog
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	AccountId varchar(128) binary not null,
	UserGuid bigint unsigned not null,
	GroupId varchar(32) not null,
	SubGroupId varchar(32) not null,
	WorldId int not null,
	RegisteTime varchar(24) not null,
	RegisteIp varchar(32) not null,
	RegisteDeviceId varchar(128) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableUserRegisterLogPrimaryIndex on TableUserRegisterLog (AccountId,UserGuid);
create index TableUserRegisterLogIndex on  TableUserRegisterLog (UserGuid);

create table TableUserLoginLog
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	AccountId varchar(128) binary not null,
	UserGuid bigint unsigned not null,
	GroupId varchar(32) not null,
	SubGroupId varchar(32) not null,
	WorldId int not null,
	LoginTime varchar(24) not null,
	LoginLevel int not null,
	OnLineTime int not null,
	LoginIp varchar(32) not null,
	LoginDeviceId varchar(128) not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableUserLoginLogPrimaryIndex on TableUserLoginLog (AccountId,UserGuid);

create table TableUserOnlineLog
(
	AutoKey int not null auto_increment,
	IsValid boolean not null,
	DataVersion int not null,
	Time varchar(24) binary not null,
	WorldId int not null,
	UserCount int not null,
	primary key (AutoKey)
) ENGINE=InnoDB;
create unique index TableUserOnlineLogPrimaryIndex on TableUserOnlineLog (Time);


#----------------------------------------------------------------------------------------------------------------------

drop procedure if exists SaveTableGlobalParam;
delimiter $$
create procedure SaveTableGlobalParam(
	in _IsValid boolean
	,in _DataVersion int
	,in _ParamType varchar(32)
	,in _ParamValue varchar(64)
)
begin
	insert into TableGlobalParam (AutoKey,IsValid,DataVersion,ParamType,ParamValue)
		values 
			(null,_IsValid,_DataVersion
			,_ParamType
			,_ParamValue
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			ParamType =  if(DataVersion < _DataVersion, _ParamType, ParamType),
			ParamValue =  if(DataVersion < _DataVersion, _ParamValue, ParamValue),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableGuid;
delimiter $$
create procedure SaveTableGuid(
	in _IsValid boolean
	,in _DataVersion int
	,in _GuidType varchar(24)
	,in _GuidValue bigint unsigned
)
begin
	insert into TableGuid (AutoKey,IsValid,DataVersion,GuidType,GuidValue)
		values 
			(null,_IsValid,_DataVersion
			,_GuidType
			,_GuidValue
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			GuidType =  if(DataVersion < _DataVersion, _GuidType, GuidType),
			GuidValue =  if(DataVersion < _DataVersion, _GuidValue, GuidValue),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableNicknameInfo;
delimiter $$
create procedure SaveTableNicknameInfo(
	in _IsValid boolean
	,in _DataVersion int
	,in _Nickname varchar(32)
	,in _Sex int
	,in _UserGuid bigint unsigned
)
begin
	insert into TableNicknameInfo (AutoKey,IsValid,DataVersion,Nickname,Sex,UserGuid)
		values 
			(null,_IsValid,_DataVersion
			,_Nickname
			,_Sex
			,_UserGuid
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Nickname =  if(DataVersion < _DataVersion, _Nickname, Nickname),
			Sex =  if(DataVersion < _DataVersion, _Sex, Sex),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableAccount;
delimiter $$
create procedure SaveTableAccount(
	in _IsValid boolean
	,in _DataVersion int
	,in _AccountKey varchar(128)
	,in _IsBanned boolean
	,in _UserGuid1 bigint unsigned
	,in _HeroId1 int
	,in _Nickname1 varchar(32)
	,in _Level1 int
	,in _CitySceneId1 int
	,in _UserGuid2 bigint unsigned
	,in _HeroId2 int
	,in _Nickname2 varchar(32)
	,in _Level2 int
	,in _CitySceneId2 int
	,in _UserGuid3 bigint unsigned
	,in _HeroId3 int
	,in _Nickname3 varchar(32)
	,in _Level3 int
	,in _CitySceneId3 int
)
begin
	insert into TableAccount (AutoKey,IsValid,DataVersion,AccountKey,IsBanned,UserGuid1,HeroId1,Nickname1,Level1,CitySceneId1,UserGuid2,HeroId2,Nickname2,Level2,CitySceneId2,UserGuid3,HeroId3,Nickname3,Level3,CitySceneId3)
		values 
			(null,_IsValid,_DataVersion
			,_AccountKey
			,_IsBanned
			,_UserGuid1
			,_HeroId1
			,_Nickname1
			,_Level1
			,_CitySceneId1
			,_UserGuid2
			,_HeroId2
			,_Nickname2
			,_Level2
			,_CitySceneId2
			,_UserGuid3
			,_HeroId3
			,_Nickname3
			,_Level3
			,_CitySceneId3
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			AccountKey =  if(DataVersion < _DataVersion, _AccountKey, AccountKey),
			IsBanned =  if(DataVersion < _DataVersion, _IsBanned, IsBanned),
			UserGuid1 =  if(DataVersion < _DataVersion, _UserGuid1, UserGuid1),
			HeroId1 =  if(DataVersion < _DataVersion, _HeroId1, HeroId1),
			Nickname1 =  if(DataVersion < _DataVersion, _Nickname1, Nickname1),
			Level1 =  if(DataVersion < _DataVersion, _Level1, Level1),
			CitySceneId1 =  if(DataVersion < _DataVersion, _CitySceneId1, CitySceneId1),
			UserGuid2 =  if(DataVersion < _DataVersion, _UserGuid2, UserGuid2),
			HeroId2 =  if(DataVersion < _DataVersion, _HeroId2, HeroId2),
			Nickname2 =  if(DataVersion < _DataVersion, _Nickname2, Nickname2),
			Level2 =  if(DataVersion < _DataVersion, _Level2, Level2),
			CitySceneId2 =  if(DataVersion < _DataVersion, _CitySceneId2, CitySceneId2),
			UserGuid3 =  if(DataVersion < _DataVersion, _UserGuid3, UserGuid3),
			HeroId3 =  if(DataVersion < _DataVersion, _HeroId3, HeroId3),
			Nickname3 =  if(DataVersion < _DataVersion, _Nickname3, Nickname3),
			Level3 =  if(DataVersion < _DataVersion, _Level3, Level3),
			CitySceneId3 =  if(DataVersion < _DataVersion, _CitySceneId3, CitySceneId3),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableUserInfo;
delimiter $$
create procedure SaveTableUserInfo(
	in _IsValid boolean
	,in _DataVersion int
	,in _Guid bigint unsigned
	,in _AccountKey varchar(128)
	,in _Nickname varchar(32)
	,in _Sex int
	,in _HeroId int
	,in _CreateTime varchar(24)
	,in _Gold int
	,in _Diamond int
	,in _Vip int
	,in _Level int
	,in _Exp int
	,in _Score int
	,in _LastLogoutTime varchar(24)
	,in _ReadedMails varchar(32)
	,in _DeletedMails varchar(32)
)
begin
	insert into TableUserInfo (AutoKey,IsValid,DataVersion,Guid,AccountKey,Nickname,Sex,HeroId,CreateTime,Gold,Diamond,Vip,Level,Exp,Score,LastLogoutTime,ReadedMails,DeletedMails)
		values 
			(null,_IsValid,_DataVersion
			,_Guid
			,_AccountKey
			,_Nickname
			,_Sex
			,_HeroId
			,_CreateTime
			,_Gold
			,_Diamond
			,_Vip
			,_Level
			,_Exp
			,_Score
			,_LastLogoutTime
			,_ReadedMails
			,_DeletedMails
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Guid =  if(DataVersion < _DataVersion, _Guid, Guid),
			AccountKey =  if(DataVersion < _DataVersion, _AccountKey, AccountKey),
			Nickname =  if(DataVersion < _DataVersion, _Nickname, Nickname),
			Sex =  if(DataVersion < _DataVersion, _Sex, Sex),
			HeroId =  if(DataVersion < _DataVersion, _HeroId, HeroId),
			CreateTime =  if(DataVersion < _DataVersion, _CreateTime, CreateTime),
			Gold =  if(DataVersion < _DataVersion, _Gold, Gold),
			Diamond =  if(DataVersion < _DataVersion, _Diamond, Diamond),
			Vip =  if(DataVersion < _DataVersion, _Vip, Vip),
			Level =  if(DataVersion < _DataVersion, _Level, Level),
			Exp =  if(DataVersion < _DataVersion, _Exp, Exp),
			Score =  if(DataVersion < _DataVersion, _Score, Score),
			LastLogoutTime =  if(DataVersion < _DataVersion, _LastLogoutTime, LastLogoutTime),
			ReadedMails =  if(DataVersion < _DataVersion, _ReadedMails, ReadedMails),
			DeletedMails =  if(DataVersion < _DataVersion, _DeletedMails, DeletedMails),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableMailData;
delimiter $$
create procedure SaveTableMailData(
	in _IsValid boolean
	,in _DataVersion int
	,in _Guid bigint unsigned
	,in _UserGuid bigint unsigned
	,in _Title varchar(64)
	,in _Text varchar(512)
	,in _CreateTime varchar(24)
	,in _IsRead boolean
)
begin
	insert into TableMailData (AutoKey,IsValid,DataVersion,Guid,UserGuid,Title,Text,CreateTime,IsRead)
		values 
			(null,_IsValid,_DataVersion
			,_Guid
			,_UserGuid
			,_Title
			,_Text
			,_CreateTime
			,_IsRead
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Guid =  if(DataVersion < _DataVersion, _Guid, Guid),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			Title =  if(DataVersion < _DataVersion, _Title, Title),
			Text =  if(DataVersion < _DataVersion, _Text, Text),
			CreateTime =  if(DataVersion < _DataVersion, _CreateTime, CreateTime),
			IsRead =  if(DataVersion < _DataVersion, _IsRead, IsRead),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableTalentCardData;
delimiter $$
create procedure SaveTableTalentCardData(
	in _IsValid boolean
	,in _DataVersion int
	,in _Guid bigint unsigned
	,in _TalentCardId int
)
begin
	insert into TableTalentCardData (AutoKey,IsValid,DataVersion,Guid,TalentCardId)
		values 
			(null,_IsValid,_DataVersion
			,_Guid
			,_TalentCardId
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Guid =  if(DataVersion < _DataVersion, _Guid, Guid),
			TalentCardId =  if(DataVersion < _DataVersion, _TalentCardId, TalentCardId),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableFriendInfo;
delimiter $$
create procedure SaveTableFriendInfo(
	in _IsValid boolean
	,in _DataVersion int
	,in _UserGuid bigint unsigned
	,in _FriendGuid bigint unsigned
	,in _Nickname varchar(32)
	,in _Level int
	,in _Sex int
	,in _ExtralInfo varchar(512)
)
begin
	insert into TableFriendInfo (AutoKey,IsValid,DataVersion,UserGuid,FriendGuid,Nickname,Level,Sex,ExtralInfo)
		values 
			(null,_IsValid,_DataVersion
			,_UserGuid
			,_FriendGuid
			,_Nickname
			,_Level
			,_Sex
			,_ExtralInfo
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			FriendGuid =  if(DataVersion < _DataVersion, _FriendGuid, FriendGuid),
			Nickname =  if(DataVersion < _DataVersion, _Nickname, Nickname),
			Level =  if(DataVersion < _DataVersion, _Level, Level),
			Sex =  if(DataVersion < _DataVersion, _Sex, Sex),
			ExtralInfo =  if(DataVersion < _DataVersion, _ExtralInfo, ExtralInfo),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableRankInfo;
delimiter $$
create procedure SaveTableRankInfo(
	in _IsValid boolean
	,in _DataVersion int
	,in _Guid bigint unsigned
	,in _RankType int
	,in _Sex int
	,in _Score int
	,in _Name varchar(32)
	,in _Rank int
	,in _MaxScore int
	,in _MaxRank int
)
begin
	insert into TableRankInfo (AutoKey,IsValid,DataVersion,Guid,RankType,Sex,Score,Name,Rank,MaxScore,MaxRank)
		values 
			(null,_IsValid,_DataVersion
			,_Guid
			,_RankType
			,_Sex
			,_Score
			,_Name
			,_Rank
			,_MaxScore
			,_MaxRank
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Guid =  if(DataVersion < _DataVersion, _Guid, Guid),
			RankType =  if(DataVersion < _DataVersion, _RankType, RankType),
			Sex =  if(DataVersion < _DataVersion, _Sex, Sex),
			Score =  if(DataVersion < _DataVersion, _Score, Score),
			Name =  if(DataVersion < _DataVersion, _Name, Name),
			Rank =  if(DataVersion < _DataVersion, _Rank, Rank),
			MaxScore =  if(DataVersion < _DataVersion, _MaxScore, MaxScore),
			MaxRank =  if(DataVersion < _DataVersion, _MaxRank, MaxRank),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableFriendProcessCache;
delimiter $$
create procedure SaveTableFriendProcessCache(
	in _IsValid boolean
	,in _DataVersion int
	,in _SenderGuid bigint unsigned
	,in _ReceiverGuid bigint unsigned
	,in _SenderName varchar(32)
	,in _SenderSex int
	,in _SenderLevel int
	,in _ExtraInfo varchar(512)
	,in _ProcessType int
	,in _ProcessResult int
)
begin
	insert into TableFriendProcessCache (AutoKey,IsValid,DataVersion,SenderGuid,ReceiverGuid,SenderName,SenderSex,SenderLevel,ExtraInfo,ProcessType,ProcessResult)
		values 
			(null,_IsValid,_DataVersion
			,_SenderGuid
			,_ReceiverGuid
			,_SenderName
			,_SenderSex
			,_SenderLevel
			,_ExtraInfo
			,_ProcessType
			,_ProcessResult
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			SenderGuid =  if(DataVersion < _DataVersion, _SenderGuid, SenderGuid),
			ReceiverGuid =  if(DataVersion < _DataVersion, _ReceiverGuid, ReceiverGuid),
			SenderName =  if(DataVersion < _DataVersion, _SenderName, SenderName),
			SenderSex =  if(DataVersion < _DataVersion, _SenderSex, SenderSex),
			SenderLevel =  if(DataVersion < _DataVersion, _SenderLevel, SenderLevel),
			ExtraInfo =  if(DataVersion < _DataVersion, _ExtraInfo, ExtraInfo),
			ProcessType =  if(DataVersion < _DataVersion, _ProcessType, ProcessType),
			ProcessResult =  if(DataVersion < _DataVersion, _ProcessResult, ProcessResult),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableUserQuestionAnswer;
delimiter $$
create procedure SaveTableUserQuestionAnswer(
	in _IsValid boolean
	,in _DataVersion int
	,in _UserGuid bigint unsigned
	,in _Answer varchar(512)
)
begin
	insert into TableUserQuestionAnswer (AutoKey,IsValid,DataVersion,UserGuid,Answer)
		values 
			(null,_IsValid,_DataVersion
			,_UserGuid
			,_Answer
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			Answer =  if(DataVersion < _DataVersion, _Answer, Answer),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableUserRegisterLog;
delimiter $$
create procedure SaveTableUserRegisterLog(
	in _IsValid boolean
	,in _DataVersion int
	,in _AccountId varchar(128)
	,in _UserGuid bigint unsigned
	,in _GroupId varchar(32)
	,in _SubGroupId varchar(32)
	,in _WorldId int
	,in _RegisteTime varchar(24)
	,in _RegisteIp varchar(32)
	,in _RegisteDeviceId varchar(128)
)
begin
	insert into TableUserRegisterLog (AutoKey,IsValid,DataVersion,AccountId,UserGuid,GroupId,SubGroupId,WorldId,RegisteTime,RegisteIp,RegisteDeviceId)
		values 
			(null,_IsValid,_DataVersion
			,_AccountId
			,_UserGuid
			,_GroupId
			,_SubGroupId
			,_WorldId
			,_RegisteTime
			,_RegisteIp
			,_RegisteDeviceId
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			AccountId =  if(DataVersion < _DataVersion, _AccountId, AccountId),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			GroupId =  if(DataVersion < _DataVersion, _GroupId, GroupId),
			SubGroupId =  if(DataVersion < _DataVersion, _SubGroupId, SubGroupId),
			WorldId =  if(DataVersion < _DataVersion, _WorldId, WorldId),
			RegisteTime =  if(DataVersion < _DataVersion, _RegisteTime, RegisteTime),
			RegisteIp =  if(DataVersion < _DataVersion, _RegisteIp, RegisteIp),
			RegisteDeviceId =  if(DataVersion < _DataVersion, _RegisteDeviceId, RegisteDeviceId),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableUserLoginLog;
delimiter $$
create procedure SaveTableUserLoginLog(
	in _IsValid boolean
	,in _DataVersion int
	,in _AccountId varchar(128)
	,in _UserGuid bigint unsigned
	,in _GroupId varchar(32)
	,in _SubGroupId varchar(32)
	,in _WorldId int
	,in _LoginTime varchar(24)
	,in _LoginLevel int
	,in _OnLineTime int
	,in _LoginIp varchar(32)
	,in _LoginDeviceId varchar(128)
)
begin
	insert into TableUserLoginLog (AutoKey,IsValid,DataVersion,AccountId,UserGuid,GroupId,SubGroupId,WorldId,LoginTime,LoginLevel,OnLineTime,LoginIp,LoginDeviceId)
		values 
			(null,_IsValid,_DataVersion
			,_AccountId
			,_UserGuid
			,_GroupId
			,_SubGroupId
			,_WorldId
			,_LoginTime
			,_LoginLevel
			,_OnLineTime
			,_LoginIp
			,_LoginDeviceId
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			AccountId =  if(DataVersion < _DataVersion, _AccountId, AccountId),
			UserGuid =  if(DataVersion < _DataVersion, _UserGuid, UserGuid),
			GroupId =  if(DataVersion < _DataVersion, _GroupId, GroupId),
			SubGroupId =  if(DataVersion < _DataVersion, _SubGroupId, SubGroupId),
			WorldId =  if(DataVersion < _DataVersion, _WorldId, WorldId),
			LoginTime =  if(DataVersion < _DataVersion, _LoginTime, LoginTime),
			LoginLevel =  if(DataVersion < _DataVersion, _LoginLevel, LoginLevel),
			OnLineTime =  if(DataVersion < _DataVersion, _OnLineTime, OnLineTime),
			LoginIp =  if(DataVersion < _DataVersion, _LoginIp, LoginIp),
			LoginDeviceId =  if(DataVersion < _DataVersion, _LoginDeviceId, LoginDeviceId),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;

drop procedure if exists SaveTableUserOnlineLog;
delimiter $$
create procedure SaveTableUserOnlineLog(
	in _IsValid boolean
	,in _DataVersion int
	,in _Time varchar(24)
	,in _WorldId int
	,in _UserCount int
)
begin
	insert into TableUserOnlineLog (AutoKey,IsValid,DataVersion,Time,WorldId,UserCount)
		values 
			(null,_IsValid,_DataVersion
			,_Time
			,_WorldId
			,_UserCount
			)
		on duplicate key update 
			IsValid =  if(DataVersion < _DataVersion, _IsValid, IsValid),
			Time =  if(DataVersion < _DataVersion, _Time, Time),
			WorldId =  if(DataVersion < _DataVersion, _WorldId, WorldId),
			UserCount =  if(DataVersion < _DataVersion, _UserCount, UserCount),
			DataVersion =  if(DataVersion < _DataVersion, _DataVersion, DataVersion);
end $$
delimiter ;


#----------------------------------------------------------------------------------------------------------------------

drop procedure if exists LoadAllTableGlobalParam;
delimiter $$
create procedure LoadAllTableGlobalParam(in _Start int, in _Count int)
begin
	select * from TableGlobalParam where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableGlobalParam;
delimiter $$
create procedure LoadSingleTableGlobalParam(
	in _ParamType varchar(32)
)
begin
	select * from TableGlobalParam where IsValid = 1 
		and ParamType = _ParamType 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableGuid;
delimiter $$
create procedure LoadAllTableGuid(in _Start int, in _Count int)
begin
	select * from TableGuid where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableGuid;
delimiter $$
create procedure LoadSingleTableGuid(
	in _GuidType varchar(24)
)
begin
	select * from TableGuid where IsValid = 1 
		and GuidType = _GuidType 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableNicknameInfo;
delimiter $$
create procedure LoadAllTableNicknameInfo(in _Start int, in _Count int)
begin
	select * from TableNicknameInfo where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableNicknameInfo;
delimiter $$
create procedure LoadSingleTableNicknameInfo(
	in _Nickname varchar(32)
)
begin
	select * from TableNicknameInfo where IsValid = 1 
		and Nickname = _Nickname 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableAccount;
delimiter $$
create procedure LoadAllTableAccount(in _Start int, in _Count int)
begin
	select * from TableAccount where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableAccount;
delimiter $$
create procedure LoadSingleTableAccount(
	in _AccountKey varchar(128)
)
begin
	select * from TableAccount where IsValid = 1 
		and AccountKey = _AccountKey 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableUserInfo;
delimiter $$
create procedure LoadAllTableUserInfo(in _Start int, in _Count int)
begin
	select * from TableUserInfo where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableUserInfo;
delimiter $$
create procedure LoadSingleTableUserInfo(
	in _Guid bigint unsigned
)
begin
	select * from TableUserInfo where IsValid = 1 
		and Guid = _Guid 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableUserInfo;
delimiter $$
create procedure LoadMultiTableUserInfo(
	in _AccountKey varchar(128)
)
begin
	select * from TableUserInfo where IsValid = 1 
		and AccountKey = _AccountKey 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableMailData;
delimiter $$
create procedure LoadAllTableMailData(in _Start int, in _Count int)
begin
	select * from TableMailData where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableMailData;
delimiter $$
create procedure LoadSingleTableMailData(
	in _Guid bigint unsigned
)
begin
	select * from TableMailData where IsValid = 1 
		and Guid = _Guid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableTalentCardData;
delimiter $$
create procedure LoadAllTableTalentCardData(in _Start int, in _Count int)
begin
	select * from TableTalentCardData where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableTalentCardData;
delimiter $$
create procedure LoadSingleTableTalentCardData(
	in _Guid bigint unsigned
	,in _TalentCardId int
)
begin
	select * from TableTalentCardData where IsValid = 1 
		and Guid = _Guid 
		and TalentCardId = _TalentCardId 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableTalentCardData;
delimiter $$
create procedure LoadMultiTableTalentCardData(
	in _Guid bigint unsigned
)
begin
	select * from TableTalentCardData where IsValid = 1 
		and Guid = _Guid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableFriendInfo;
delimiter $$
create procedure LoadAllTableFriendInfo(in _Start int, in _Count int)
begin
	select * from TableFriendInfo where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableFriendInfo;
delimiter $$
create procedure LoadSingleTableFriendInfo(
	in _UserGuid bigint unsigned
	,in _FriendGuid bigint unsigned
)
begin
	select * from TableFriendInfo where IsValid = 1 
		and UserGuid = _UserGuid 
		and FriendGuid = _FriendGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableFriendInfo;
delimiter $$
create procedure LoadMultiTableFriendInfo(
	in _UserGuid bigint unsigned
)
begin
	select * from TableFriendInfo where IsValid = 1 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableRankInfo;
delimiter $$
create procedure LoadAllTableRankInfo(in _Start int, in _Count int)
begin
	select * from TableRankInfo where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableRankInfo;
delimiter $$
create procedure LoadSingleTableRankInfo(
	in _Guid bigint unsigned
	,in _RankType int
)
begin
	select * from TableRankInfo where IsValid = 1 
		and Guid = _Guid 
		and RankType = _RankType 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableRankInfo;
delimiter $$
create procedure LoadMultiTableRankInfo(
	in _Guid bigint unsigned
	,in _RankType int
)
begin
	select * from TableRankInfo where IsValid = 1 
		and Guid = _Guid 
		and RankType = _RankType 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableFriendProcessCache;
delimiter $$
create procedure LoadAllTableFriendProcessCache(in _Start int, in _Count int)
begin
	select * from TableFriendProcessCache where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableFriendProcessCache;
delimiter $$
create procedure LoadSingleTableFriendProcessCache(
	in _SenderGuid bigint unsigned
	,in _ReceiverGuid bigint unsigned
)
begin
	select * from TableFriendProcessCache where IsValid = 1 
		and SenderGuid = _SenderGuid 
		and ReceiverGuid = _ReceiverGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableFriendProcessCache;
delimiter $$
create procedure LoadMultiTableFriendProcessCache(
	in _SenderGuid bigint unsigned
)
begin
	select * from TableFriendProcessCache where IsValid = 1 
		and SenderGuid = _SenderGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableUserQuestionAnswer;
delimiter $$
create procedure LoadAllTableUserQuestionAnswer(in _Start int, in _Count int)
begin
	select * from TableUserQuestionAnswer where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableUserQuestionAnswer;
delimiter $$
create procedure LoadSingleTableUserQuestionAnswer(
	in _UserGuid bigint unsigned
)
begin
	select * from TableUserQuestionAnswer where IsValid = 1 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableUserQuestionAnswer;
delimiter $$
create procedure LoadMultiTableUserQuestionAnswer(
	in _UserGuid bigint unsigned
)
begin
	select * from TableUserQuestionAnswer where IsValid = 1 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableUserRegisterLog;
delimiter $$
create procedure LoadAllTableUserRegisterLog(in _Start int, in _Count int)
begin
	select * from TableUserRegisterLog where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableUserRegisterLog;
delimiter $$
create procedure LoadSingleTableUserRegisterLog(
	in _AccountId varchar(128)
	,in _UserGuid bigint unsigned
)
begin
	select * from TableUserRegisterLog where IsValid = 1 
		and AccountId = _AccountId 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadMultiTableUserRegisterLog;
delimiter $$
create procedure LoadMultiTableUserRegisterLog(
	in _UserGuid bigint unsigned
)
begin
	select * from TableUserRegisterLog where IsValid = 1 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableUserLoginLog;
delimiter $$
create procedure LoadAllTableUserLoginLog(in _Start int, in _Count int)
begin
	select * from TableUserLoginLog where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableUserLoginLog;
delimiter $$
create procedure LoadSingleTableUserLoginLog(
	in _AccountId varchar(128)
	,in _UserGuid bigint unsigned
)
begin
	select * from TableUserLoginLog where IsValid = 1 
		and AccountId = _AccountId 
		and UserGuid = _UserGuid 
		;
end $$
delimiter ;

drop procedure if exists LoadAllTableUserOnlineLog;
delimiter $$
create procedure LoadAllTableUserOnlineLog(in _Start int, in _Count int)
begin
	select * from TableUserOnlineLog where IsValid = 1 limit _Start, _Count;
end $$
delimiter ;

drop procedure if exists LoadSingleTableUserOnlineLog;
delimiter $$
create procedure LoadSingleTableUserOnlineLog(
	in _Time varchar(24)
)
begin
	select * from TableUserOnlineLog where IsValid = 1 
		and Time = _Time 
		;
end $$
delimiter ;

