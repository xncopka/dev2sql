-- Fichier question2.sql
-- Alekesandra Maric (1049140) & Thomas Bui (20055825)
-- pour postgres


begin TRANSACTION;

SET search_path to ParcInfo;

alter table Segment alter column indIP type text;
alter table Salle alter column nSalle type text;
alter table Salle alter column indIP type text;
alter table Poste alter column nPoste type text;
alter table Poste alter column indIP type text;
alter table Poste alter column nSalle type text;
alter table Logiciel alter column nLog type text;
alter table Installer alter column nPoste type text;
alter table Installer alter column nLog type text;
alter table Installer alter column dateIns drop not null;

commit;