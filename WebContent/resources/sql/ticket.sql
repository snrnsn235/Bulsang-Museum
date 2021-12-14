CREATE table if not exists ticket(
	t_Ticketid varchar(10) not null,
	t_Ticketname varchar(10),
	t_TicketPrice integer,
	t_description text,
	t_fileName varchar(20),
	primary key(t_Ticketid)
)default charset=utf8;
show databases;

select * from ticket;