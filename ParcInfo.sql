begin TRANSACTION;

create table Segment (indIP integer primary key,
					  nomSegment text not null,
					  etage integer
					 );

create table Salle (nSalle integer primary key,
					nomSalle text not null,
					nbPoste integer,
					indIP integer
					);
									
create table Poste (nPoste integer primary key,
					nomPoste text not null,
					indIP integer,
					ad text,
					typePoste text,
					nSalle integer,
					CONSTRAINT cons_ad check (ad between '0' and '255') 
					);				
					
create table Logiciel (nLog integer primary key,
						nomLog text,
						dateAch date,
						version text,
						typeLog text,
						prix real,
					   CONSTRAINT pos_prix check(prix >=0)
						);		
					
create table Installer (numIns serial primary key,
						nPoste integer,
						nLog integer,
						dateIns timestamp not null default current_timestamp,
						delai integer
						);	
					

create table Types (typeLP text primary key,
						nomType text
						);	

commit;