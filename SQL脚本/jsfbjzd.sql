-create database jsfbjzd

create table xs
(xm varchar(10) not null,
xh char(10) primary key,
xydh char(3) not null,
sjh char(11) not null
)

create table dw
(dwdh char(5) primary key,
dwmc varchar(20) not null,
dzxh char(10) not null,
jsdh char(5) not null,
zdgh char(10) not null,
zt char(10) not null
)

create table dwgc
(dwdh char(5) not null,
cyxh char(10) not null,
primary key(dwdh,cyxh)
)

create table dwsq
(dwdh char(5) not null,
cyxh char(10) not null,
primary key(dwdh,cyxh)
)


create table js
(jsdh char(5) primary key,
jsmc varchar(50) not null,
zbdw varchar(30),
begindate date not null,
enddate date not null,
teamrule varchar(50) not null
)

create table zdls
(xm varchar(10) not null,
gh char(10) primary key,
xydh char(3) not null,
sjh char(11) not null,
zc varchar(10) not null
)

create table xy
(xydh char(3) primary key,
xymc varchar(20) not null
)


create table users
(username varchar(20) primary key,
userpassword varchar(20) not null,
xh char(10),
therole char(1) not null
)


insert into xs values
('������','1120180001','001','15636697855'),
('Ǯ����','1120180002','001','15654123655'),
('������','1120180003','001','13288556645'),
('����','1120180004','001',  '18855661254'),
('��һһ','1120180005','001','13356568545'),
('�ܳ���','1120180006','002','15023599845'),
('���','1120180007','002',  '15156495252'),
('֣��','1120180008','002',  '18864123508'),
('�ŷ���','1120180009','002','18865239987'),
('����','1120180010','002',  '15644852366'),
('������','1120180011','003','15685366624'),
('ʯ��','1120180012','003',  '13255663218'),
('����','1120180013','003',  '13256985512'),
('�����','1120180014','003','15689955647'),
('����','1120180015','003',  '13285648426'),
('���','1120180016','004',  '15633525897'),
('�뽨��','1120180017','004','15688987451'),
('�Ǿ�','1120180018','004',  '13256998754'),
('��ܲ','1120180019','004',  '13266598740'),
('ŷ���Ĺ�','1120180020','004','15688215648');

insert into xy values
('001','�����ѧԺ'),
('002','���ѧԺ'),
('003','�Զ���ѧԺ'),
('004','��ѧѧԺ')

insert into js values
('00001','��ѧ����ѧ��ģ����','��ѧ����ѧ��ģ������ί��','2020-05-14','2021-01-01','1-3��'),
('00002','�ڰ˽조���ֱ���ȫ����ѧ�������������ƴ���','��ҵ����Ϣ���������뿼������','2020-09-10','2021-01-31','1-5��'),
('00003','��ʮһ�조�������б���ȫ����ѧ�����ڿƼ����´���','�й��������йɷ����޹�˾','2020-04-01','2020-09-01','1-2��')

insert into zdls values
('��ʫ��','1000800001','001','13256897454','����'),
('����',  '1000800002','001','15685256322','��ʦ'),
('���Ĵ�','1000800003','002','15684447785','������'),
('���',  '1000800004','003','18865236544','������'),
('�Ϻ�ΰ','1000800005','004','18825647189','����')

insert into dw values
('1','�¶���','1120180004','00001','1000800004','�����'),
('2','������','1120180003','00001','1000800005','�����'),
('3','С����','1120180006','00002','1000800003','���ͨ��')


insert into dwgc values
('1','1120180005'),
('1','1120180006'),
('2','1120180011'),
('2','1120180010'),
('2','1120180012'),
('2','1120180013'),
('3','1120180019'),
('3','1120180020')

insert into dwsq values
('1','1120180007'),
('1','1120180009'),
('2','1120180008')

alter table xs add constraint FK_xs_xydh foreign key (xydh) references xy(xydh)
alter table dw add constraint FK_dw_dzxh foreign key (dzxh) references xs(xh)
alter table dw add constraint FK_dw_jsdh foreign key (jsdh) references js(jsdh)
alter table dw add constraint FK_dw_zdgh foreign key (zdgh) references zdls(gh)
alter table zdls add constraint FK_zdls_xydh foreign key (xydh) references xy(xydh)
alter table dwgc add constraint FK_dwgc_dwdh foreign key (dwdh) references dw(dwdh)
alter table dwgc add constraint FK_dwgc_cyxh foreign key (cyxh) references xs(xh)


insert into users values
('777','777','1120180004','0'),
('123','123','1120180001','0'),
('456','456','','1')


