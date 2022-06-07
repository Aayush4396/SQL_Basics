Insert into t1 values('Y')

select * from t1
select * from t2

select SCOPE_IDENTITY()
select @@identity

create trigger trForInsert on T1 for insert 
as
Begin
	Insert into t2 values ('YYYY')
End