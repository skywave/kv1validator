alter table pool drop constraint pool_dataownercode_fkey;
alter table link drop constraint link_pkey;
alter table link add constraint link_pkey PRIMARY KEY ("version", "dataownercode", "userstopcodebegin", "userstopcodeend", "validfrom");
alter table pool add constraint pool_dataownercode_fkey FOREIGN KEY (Version, DataOwnerCode, UserStopCodeBegin, UserStopCodeEnd, LinkValidFrom) REFERENCES 
link (Version, DataOwnerCode, UserStopCodeBegin, UserStopCodeEnd, ValidFrom);
alter table pool drop constraint pool_dataownercode_fkey;

alter table pool drop constraint pool_pkey;
alter table pool add constraint pool_pkey PRIMARY KEY (Version, DataOwnerCode, UserStopCodeBegin, UserStopCodeEnd, LinkValidFrom, PointDataOwnerCode, 
PointCode);

alter table link drop column transporttype;
alter table pool drop column transporttype;

-- For KV1 supplied to GOVI
--alter table pujopass drop column wheelchairaccessible;
--alter table pujopass drop column dataownerisoperator;
--alter table jopatili drop column productformulatype;
--alter table dest drop column relevantdestnamedetail;
--alter table line drop column transporttype;
--alter table usrstop drop column userstoptype;
--alter table jopatili drop constraint jopatili_dataownercode_fkey;
