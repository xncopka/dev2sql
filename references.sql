begin TRANSACTION;

-- Fichier references.sql
-- Alekesandra Maric (1049140) & Thomas Bui (20055825)
-- pour postgres


SET search_path to ParcInfo;

delete from Logiciel where typeLog not in (select typeLP from Types);
delete from Salle where indIP not in (select indIP from Segment);


alter table Poste add constraint fk_Poste_Segment foreign key (indIP) references Segment(indIP);
alter table Poste add constraint fk_Poste_Types foreign key (typePoste) references Types(typeLP);
alter table Poste add constraint fk_Poste_Salle foreign key (nSalle) references Salle(nSalle);
alter table Installer add constraint fk_Installer_Poste foreign key (nPoste) references Poste(nPoste);
alter table Installer add constraint fk_Installer_Logiciel foreign key (nLog) references Logiciel(nLog);
alter table Logiciel add constraint fk_Logiciel_Types foreign key (typeLog) references Types(typeLP);
alter table Salle add constraint fk_Salle_Segment foreign key (indIP) references Segment(indIP);


commit;