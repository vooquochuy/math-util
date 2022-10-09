--cau1
create login NV1 with password ='123'
create login NV2 with password='123'
create login QL with password='123'
create user NV1 for login NV1
create user NV2 for login NV2
create user QL for login QL

--a

grant select on [Person].[Person] to QL
deny update on [Person].[Person] to NV2
grant select on [Person].[PersonPhone] to QL
--b



grant update,select on [Person].[PersonPhone] to NV1
grant update,select on [Person].[Person] to NV2
grant update,select on [Person].[PersonPhone] to NV2

--1.e
revoke select,update,delete to NV1
revoke select,update,delete to NV2
revoke select,update,delete to QL

 drop role NhanVien