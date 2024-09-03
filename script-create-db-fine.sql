create table if not exists AreaCode(
  code varchar(50) primary key,
  cityName varchar(50),
  provinceName varchar(50)
  );
  
create table if not exists Owner(
 code varchar(50) primary key,
 name varchar(50),
 surname varchar(50),
 address varchar(50),
 areaCode varchar(50) references AreaCode
 on delete set null on update cascade);
 
create table if not exists Car(
 plateNumber varchar(10) primary key,
 type varchar(50),
 owner varchar(50) references Owner 
 on delete set null on update cascade);
 
create table if not exists Infraction(
 code varchar(50) primary key,
 description varchar(50));
 
create table if not exists Policeman(
 code varchar(50) primary key,
 name varchar(50),
 surname varchar(50),
 address varchar(50), 
 areaCode varchar(50) references AreaCode
 on delete set null on update cascade);
 
create table if not exists Fine(
 code varchar(50) primary key,
 policeman varchar(50) references Policeman on delete set null on update cascade,
 car varchar(10) references Car on delete set null on update cascade,
 date DATE,
 infraction varchar(50) references Infraction on delete set null on update cascade,
 streetName varchar(50),
 areaCode varchar(50) references AreaCode on delete set null on update cascade,
 cost decimal(10,2) CONSTRAINT multa_positiva 
    check (cost>=0));
	
insert into AreaCode values('A001','Firenze','Firenze');
insert into AreaCode values('A002','Agliana','Pistoia');
insert into AreaCode values('A003','Prato','Prato');
insert into AreaCode values('A004','Sesto Fiorentino','Firenze');
insert into AreaCode values('A005','Lucca','Lucca');
insert into AreaCode values('A006','Empoli','Empoli');
insert into AreaCode values('A007','Torino','Torino');
insert into AreaCode values('A008','Cuneo','Cuneo');
insert into AreaCode values('A009','Asti','Asti');
insert into AreaCode values('A010','Palermo','Palermo');
insert into AreaCode values('A011','Messina','Messina');
insert into AreaCode values('A012','Cagliari','Cagliari');
insert into AreaCode values('A013','Roma','Roma');
insert into AreaCode values('A014','Frosinone','Frosinone');
insert into AreaCode values('A015','Valverde','Catania');
insert into AreaCode values('A016','Valverde','Pavia');
insert into AreaCode values('A017','Aosta', null);
insert into AreaCode values('A018','Genova','Genova');
insert into AreaCode values('A019', null,'Milano');
insert into AreaCode values('A020', null, null);


Insert into Owner values('O001', 'Rachele', 'Bruno', 'Via Roma, 14', 'A010');
Insert into Owner values('O002', 'Fulvia', 'Gallo', 'Corso Verdi, 25', 'A005');
Insert into Owner values('O003', 'Riccardo', 'Marino', 'Corso Aldo Moro, 12', 'A016');
Insert into Owner values('O004', 'Giulia', 'Giordano', 'Via Berlinguer, 80', 'A007');
Insert into Owner values('O005', 'Caterina', 'Romano', 'Strada Verdi, 8', 'A020');
Insert into Owner values('O006', null, 'Ricci', 'Piazza Mazzini, 28', 'A017');
Insert into Owner values('O007', 'Ofelia', 'Mancini', 'Piazza Berlinguer, 92', 'A002');
Insert into Owner values('O008', 'Maria', 'Esposito', 'Via Galileo Galilei, 89B', 'A017');
Insert into Owner values('O009', 'Consuelo', 'Mancini', 'Via XXV Aprile, 37', 'A006');
Insert into Owner values('O010', 'Luigi', 'Esposito', 'Strada XXV Aprile, 34', 'A001');
Insert into Owner values('O011', 'Ugo', 'Martinelli', 'Via Mazzini, 38', 'A008');
Insert into Owner values('O012', null, null, 'Via Verdi, 113A', 'A006');
Insert into Owner values('O013', 'Marco', 'Rinaldi', 'Corso della Repubblica, 21', 'A004');
Insert into Owner values('O014', 'Tommaso', 'Russo', 'Via John Fitzgerald Kennedy, 23', 'A001');
Insert into Owner values('O015', 'Marina', 'Ferrari', 'Via Dante Alighieri, 71', 'A004');
Insert into Owner values('O016', 'Franco', 'Rinaldi', 'Piazza Gramsci, 98', 'A020');
Insert into Owner values('O017', 'Valentina', 'Conti', 'Via Galileo Galilei, 77', 'A007');
Insert into Owner values('O018', 'Andrea', 'Lombardi', 'Piazza della Libertà, 8', 'A004');
Insert into Owner values('O019', 'Piero', 'Costa', 'Via Marconi, 1', 'A015');
Insert into Owner values('O020', 'Mario', 'Bianchi', 'Via Garibaldi, 35', 'A006');
Insert into Owner values('O021', 'Elisa', 'Russo', 'Via Giovanni, 33', null);
Insert into Owner values('O022', 'Mirco', 'Barbieri', 'Piazza Roma, 10', 'A003');
Insert into Owner values('O023', 'Bruno', null, 'Via Mameli, 22', 'A001');
Insert into Owner values('O024', 'Lilia', 'Colombo', 'Via Dante Alighieri, 74B', 'A019');
Insert into Owner values('O025', 'Stella', 'Barbieri', 'Corso Falcone, 36', 'A003');
Insert into Owner values('O026', 'Sirio', 'Ferrari', null, 'A011');
Insert into Owner values('O027', 'Ciro', 'Colombo', 'Corso Risorgimento, 31', 'A003');
Insert into Owner values('O028', 'Selenia', 'Bruno', 'Piazza della Liberazione, 110', 'A008');
Insert into Owner values('O029', 'Marco Antonio', 'Rossi', 'Via Mazzini, 6', 'A008');
Insert into Owner values('O030', 'Eudora', 'Rizzo', 'Strada Risorgimento, 10', 'A006');
Insert into Owner values('O031', 'Giovanni', 'Gallo', 'Via Aldo Moro, 7', 'A019');
Insert into Owner values('O032', 'Piero', 'Giordano', 'Strada della Libertà, 32', 'A018');
Insert into Owner values('O033', 'Miranda', 'Lombardi', 'Via Garibaldi, 1A', 'A009');
Insert into Owner values('O034', 'Edoardo', 'Fontana', 'Piazza John Fitzgerald Kennedy, 39', 'A005');
Insert into Owner values('O035', 'Bruno', 'Rizzo', 'Piazza Leonardo da Vinci, 1A', 'A006');
Insert into Owner values('O036', 'Giovanna', 'Ricci', 'Via della Repubblica, 104', 'A008');
Insert into Owner values('O037', 'Francesca', 'Esposito', 'Via Leonardo da Vinci, 86', 'A001');
Insert into Owner values('O038', null, 'Leone', 'Strada Falcone, 116', 'A014');
Insert into Owner values('O039', 'Gigi', 'Lombardi', 'Via Verdi, 83', 'A006');
Insert into Owner values('O040', 'Alessia', 'Greco', 'Corso Volta, 1C', 'A005');
Insert into Owner values('O041', 'Luisa', 'Barbieri', 'Corso Michelangelo, 1', 'A015');
Insert into Owner values('O042', 'Rubina', 'Martinelli', 'Via Pascoli, 26', null);
Insert into Owner values('O043', 'Mario', 'Moretti', 'Piazza Foscolo, 19', 'A014');
Insert into Owner values('O044', 'Massimo', 'Bianchi', 'Strada della Liberazione, 27', 'A013');
Insert into Owner values('O045', 'Teonesto', 'Romano', 'Strada XXV Aprile, 95', 'A007');
Insert into Owner values('O046', 'Emanuele', 'Longo', 'Via de Gasperi, 6', 'A012');
Insert into Owner values('O047', 'Raimondo', 'Marino', 'Via Cavour, 20', 'A002');
Insert into Owner values('O048', 'Marcella', 'Moretti', 'Corso dell''Imperatore, 3', 'A017');
Insert into Owner values('O049', 'Elia', 'Leone', null, 'A016');
Insert into Owner values('O050', 'Patrizia', 'Longo', 'Strada Pascoli, 107', 'A002');


Insert into Car values('C001', 'Fiat 500', 'O012');
Insert into Car values('C002', 'Volkswagen Polo', 'O045');
Insert into Car values('C003', 'Mercedes', 'O013');
Insert into Car values('C004', 'Jeep Renegade', 'O009');
Insert into Car values('C005', 'Volkswagen Polo', 'O047');
Insert into Car values('C006', 'Fiat Panda', 'O046');
Insert into Car values('C007', 'Volkswagen Polo', 'O010');
Insert into Car values('C008', 'Ferrari', 'O024');
Insert into Car values('C009', 'Fiat 500', 'O044');
Insert into Car values('C010', 'Opel Corsa', 'O002');
Insert into Car values('C011', 'Dacia Duster', 'O027');
Insert into Car values('C012', 'Dacia Duster', 'O046');
Insert into Car values('C013', 'Ford Fiesta', 'O048');
Insert into Car values('C014', 'Dacia Duster', 'O024');
Insert into Car values('C015', 'Ferrari', 'O018');
Insert into Car values('C016', 'Fiat Panda', 'O021');
Insert into Car values('C017', 'Citroen C3', 'O047');
Insert into Car values('C018', 'Ford Fiesta', 'O023');
Insert into Car values('C019', 'Fiat 500', 'O007');
Insert into Car values('C020', 'Lancia Ypsilon', 'O009');
Insert into Car values('C021', 'Dacia Duster', 'O003');
Insert into Car values('C022', 'Fiat 500', 'O049');
Insert into Car values('C023', 'Ducato', 'O045');
Insert into Car values('C024', 'Maggiolino', 'O042');
Insert into Car values('C025', 'Lancia Ypsilon', 'O048');
Insert into Car values('C026', 'Fiat Panda', 'O038');
Insert into Car values('C027', 'Aston Martin DB5', 'O006');
Insert into Car values('C028', 'Lancia Ypsilon', 'O026');
Insert into Car values('C029', 'Citroen C3', 'O025');
Insert into Car values('C030', 'Ford Fiesta', 'O049');
Insert into Car values('C031', 'Toyota Corolla', 'O031');
Insert into Car values('C032', 'Opel Corsa', 'O045');
Insert into Car values('C033', 'Jeep Renegade', 'O027');
Insert into Car values('C034', 'Maggiolino', 'O033');
Insert into Car values('C035', 'Ferrari', 'O003');
Insert into Car values('C036', 'Toyota Corolla', 'O027');
Insert into Car values('C037', 'Fiat Panda', 'O040');
Insert into Car values('C038', 'Opel Corsa', 'O013');
Insert into Car values('C039', 'Fiat Panda', 'O022');
Insert into Car values('C040', 'Lancia Ypsilon', 'O049');
Insert into Car values('C041', 'Citroen C3', 'O039');
Insert into Car values('C042', 'Volkswagen Polo', 'O025');
Insert into Car values('C043', 'Toyota Corolla', 'O047');
Insert into Car values('C044', 'Fiat Panda', 'O011');
Insert into Car values('C045', 'Volkswagen Polo', 'O023');
Insert into Car values('C046', 'Opel Corsa', 'O006');
Insert into Car values('C047', 'Aston Martin DB5', 'O046');
Insert into Car values('C048', 'Opel Corsa', 'O022');
Insert into Car values('C049', 'Lancia Ypsilon', 'O002');
Insert into Car values('C050', 'Dacia Duster', 'O005');
Insert into Car values('C051', 'Dacia Duster', 'O026');
Insert into Car values('C052', 'Maggiolino', 'O012');
Insert into Car values('C053', 'Fiat Panda', 'O014');
Insert into Car values('C054', 'Mercedes', 'O020');
Insert into Car values('C055', 'Ducato', 'O028');
Insert into Car values('C056', 'Citroen C3', 'O017');
Insert into Car values('C057', 'Ford Fiesta', 'O017');
Insert into Car values('C058', 'Opel Corsa', 'O007');
Insert into Car values('C059', 'Ford Fiesta', 'O016');
Insert into Car values('C060', 'Maggiolino', 'O020');
Insert into Car values('C061', 'Opel Corsa', 'O032');
Insert into Car values('C062', 'Lancia Ypsilon', 'O019');
Insert into Car values('C063', 'Citroen C3', 'O008');
Insert into Car values('C064', null, 'O030');
Insert into Car values('C065', 'Lancia Ypsilon', 'O010');
Insert into Car values('C066', 'Jeep Renegade', 'O029');
Insert into Car values('C067', 'Toyota Corolla', 'O008');
Insert into Car values('C068', 'Maggiolino', 'O011');
Insert into Car values('C069', 'Fiat Panda', 'O048');
Insert into Car values('C070', 'Citroen C3', 'O050');
Insert into Car values('C071', 'Fiat 500', 'O040');
Insert into Car values('C072', 'Opel Corsa', 'O026');
Insert into Car values('C073', 'Lancia Ypsilon', 'O036');
Insert into Car values('C074', 'Fiat 500', 'O014');
Insert into Car values('C075', 'Ford Fiesta', 'O050');
Insert into Car values('C076', 'Ducato', 'O015');
Insert into Car values('C077', 'Aston Martin DB5', 'O018');
Insert into Car values('C078', 'Ducato', 'O030');
Insert into Car values('C079', 'Maggiolino', null);
Insert into Car values('C080', 'Jeep Renegade', 'O015');
Insert into Car values('C081', null, 'O019');
Insert into Car values('C082', 'Fiat Panda', 'O034');
Insert into Car values('C083', 'Volkswagen Polo', 'O028');
Insert into Car values('C084', 'Fiat 500', 'O037');
Insert into Car values('C085', 'Ford Fiesta', 'O021');
Insert into Car values('C086', 'Jeep Renegade', 'O001');
Insert into Car values('C087', 'Fiat Panda', 'O050');
Insert into Car values('C088', 'Fiat Panda', null);
Insert into Car values('C089', 'Fiat Panda', 'O005');
Insert into Car values('C090', 'Ducato', 'O035');
Insert into Car values('C091', 'Jeep Renegade', 'O004');
Insert into Car values('C092', 'Toyota Corolla', 'O016');
Insert into Car values('C093', 'Ferrari', 'O001');
Insert into Car values('C094', 'Ford Fiesta', 'O028');
Insert into Car values('C095', 'Fiat Panda', 'O025');
Insert into Car values('C096', 'Volkswagen Polo', 'O029');
Insert into Car values('C097', 'Jeep Renegade', 'O017');
Insert into Car values('C098', 'Lancia Ypsilon', 'O007');
Insert into Car values('C099', null, 'O043');
Insert into Car values('C100', 'Fiat Panda', 'O004');


Insert into Infraction Values('I001', 'Eccesso di velocità');
Insert into Infraction Values('I002', 'Parcheggio in sosta vietata');
Insert into Infraction Values('I003', 'Guida in stato di ebbrezza');
Insert into Infraction Values('I004', 'Guida col telefono in mano');
Insert into Infraction Values('I005', 'Essere passati con il rosso');
Insert into Infraction Values('I006', 'Contromano in un senso unico');
Insert into Infraction Values('I007', 'Guida senza fari di notte');
Insert into Infraction Values('I008', 'Guida senza cintura');
Insert into Infraction Values('I009', 'Guida con infante privo di seggiolino');
Insert into Infraction Values('I010', 'Gomme non a norma');
Insert into Infraction Values('I011', 'Ostacolo a mezzo di soccorso');
Insert into Infraction Values('I012', 'Parcheggio non dentro le strisce');
Insert into Infraction Values('I013', 'Non aver dato la precedenza');
Insert into Infraction Values('I014', 'Sorpasso a destra');
Insert into Infraction Values('I015', 'Ammonizione solo verbale');
Insert into Infraction Values('I016', 'Troppi passeggeri a bordo');
Insert into Infraction Values('I017', 'Trasporto di materiali eccessivamente ingombranti');
Insert into Infraction Values('I018', 'Guida senza patente');
Insert into Infraction Values('I019', 'Guida senza assicurazione');
Insert into Infraction Values('I020', 'Guida con sportelli aperti');
Insert into Infraction Values('I021', null);


Insert into Policeman Values('P001', 'Emma', 'Rossi', 'Piazza della Croce Rossa, 74', 'A010');
Insert into Policeman Values('P002', 'Bruno', 'Mancini', 'Via Vittorio Emanuele, 6', 'A011');
Insert into Policeman Values('P003', 'Caterina', 'Andreotti', 'Via della Repubblica, 139C', 'A017');
Insert into Policeman Values('P004', 'Giulia', 'Colombo', 'Corso Bosco, 7A', 'A006');
Insert into Policeman Values('P005', 'Luigi', 'Barbieri', 'Piazza Fermi, 37', 'A009');
Insert into Policeman Values('P006', 'Valentina', 'Rinaldi', 'Strada Charles Darwin, 34A', 'A020');
Insert into Policeman Values('P007', 'Lilia', 'Giordano', 'Strada del Milite ignoto, 9', 'A016');
Insert into Policeman Values('P008', 'Tommaso', 'Bianchi', 'Via Galileo Galilei, 21', 'A008');
Insert into Policeman Values('P009', 'Giulio', 'Rizzo', 'Via Argento, 170B', null);
Insert into Policeman Values('P010', 'Marco', 'Lombardi', 'Via Dalmazia, 97', 'A005');
Insert into Policeman Values('P011', 'Mario', 'Barbieri', 'Via Garibaldi, 11C', 'A003');
Insert into Policeman Values('P012', 'Mirco', null, 'Piazza Pigatora, 118', 'A008');
Insert into Policeman Values('P013', 'Elisa', 'Esposito', 'Piazza Vittorio Emanuele, 130', 'A004');
Insert into Policeman Values('P014', 'Massimo', 'Russo', 'Via dell''Opera, 5', 'A014');
Insert into Policeman Values('P015', 'Maria', 'Bruno', 'Piazza Mozart, 124', 'A009');
Insert into Policeman Values('P016', 'Simone', 'Milanese', null, 'A010');
Insert into Policeman Values('P017', null, 'Conti', 'Piazza Bosco, 35', 'A007');
Insert into Policeman Values('P018', 'Algida', 'Gallo', 'Via Mozart, 115', 'A004');
Insert into Policeman Values('P019', 'Ofelia', 'Ferrari', 'Strada Dante Alighieri, 4', 'A003');
Insert into Policeman Values('P020', 'Ugo', 'Bruno', 'Corso dei Giardini Pensili, 112', 'A002');
Insert into Policeman Values('P021', 'Marco Antonio', 'Russo', 'Via Ottaviano, 11', 'A012');
Insert into Policeman Values('P022', 'Consuelo', 'Costa', 'Via dello Sviluppo, 32', 'A015');
Insert into Policeman Values('P023', 'Sirio', 'Torinese', 'Via Europa, 37', 'A018');
Insert into Policeman Values('P024', 'Riccardo', 'Biondi', 'Corso Cavour, 14', 'A007');
Insert into Policeman Values('P025', 'Piero', 'Rinaldi', 'Corso Leonardo da Vinci, 139B', 'A001');
Insert into Policeman Values('P026', 'Benedetta', 'Ferrari', 'Via Giuseppe Impastato, 91', 'A019');
Insert into Policeman Values('P027', 'Ciro', 'Marino', 'Strada Cristoforo Colombo, 115', 'A001');
Insert into Policeman Values('P028', 'Selenia', 'Fioramonti', 'Via Bosco, 91', 'A005');
Insert into Policeman Values('P029', 'Franco', null, 'Corso Charles Darwin, 31', 'A002');
Insert into Policeman Values('P030', null, 'Esposito', 'Via dei Partigiani, 107', 'A006');
Insert into Policeman Values('P031', 'Massimo', 'Bianchi', 'Strada della Liberazione, 27', 'A013');
Insert into Policeman Values('P032', 'Marilena', 'Buonarroti', 'Piazza della Luce, 14', 'A019');


Insert into Fine values('F001', 'P022', 'C053', '2016-10-1', 'I016', 'Piazza della Croce Rossa', 'A016', 900);
Insert into Fine values('F002', 'P019', 'C058', '2013-4-14', 'I002', 'Strada Falcone', 'A015', 120);
Insert into Fine values('F003', 'P023', 'C043', '2012-6-10', 'I016', 'Piazza della Croce Rossa', 'A013', 47.5);
Insert into Fine values('F004', 'P021', 'C062', '2004-11-8', 'I016', 'Strada XXV Aprile', 'A010', 900);
Insert into Fine values('F005', 'P010', 'C056', '2004-10-15', 'I004', 'Corso Bosco', 'A017', 124);
Insert into Fine values('F006', 'P024', 'C058', '2007-2-5', 'I018', 'Via Berlinguer', 'A011', 199.99);
Insert into Fine values('F007', 'P027', 'C100', '2010-12-16', 'I016', 'Piazza Roma', 'A010', 900);
Insert into Fine values('F008', 'P011', 'C045', '2014-1-18', null, 'Via Mameli', 'A010', 178);
Insert into Fine values('F009', 'P032', 'C026', '2004-3-7', 'I004', 'Via Verdi', 'A001', 1399.99);
Insert into Fine values('F010', 'P016', 'C084', '2009-10-27', 'I007', 'Via dello Sviluppo', 'A011', 84);
Insert into Fine values('F011', 'P006', 'C088', '2009-5-16', 'I015', 'Via Mazzini', 'A011', 47.5);
Insert into Fine values('F012', 'P027', 'C013', '2011-5-28', 'I016', 'Strada Cristoforo Colombo', 'A001', 900);
Insert into Fine values('F013', 'P017', 'C065', '2018-6-9', 'I009', 'Via Vittorio Emanuele', 'A005', 99.99);
Insert into Fine values('F014', 'P025', 'C086', '2019-12-18', 'I011', 'Via Mozart', 'A003', 91);
Insert into Fine values('F015', 'P023', 'C028', '2010-6-23', 'I016', 'ViaGiuseppe Impastato', 'A015', 430);
Insert into Fine values('F016', 'P024', 'C054', '2009-5-5', 'I014', 'Via Giovanni', 'A001', 124);
Insert into Fine values('F017', 'P030', 'C054', '2008-2-24', 'I012', 'Via Europa', 'A009', 421.01);
Insert into Fine values('F018', 'P027', 'C095', '2017-4-22', 'I002', 'Corso dei Giardini Pensili', 'A014', 124);
Insert into Fine values('F019', 'P023', 'C052', '2006-12-27', 'I003', 'Via Leonardo da Vinci', 'A015', 124);
Insert into Fine values('F020', 'P020', 'C076', '2016-6-22', 'I014', 'Piazza Leonardo da Vinci', 'A013', 91);
Insert into Fine values('F021', 'P021', 'C089', '2017-10-16', 'I014', 'Via Dalmazia', 'A007', 99.81);
Insert into Fine values('F022', 'P014', 'C020', '2008-7-29', 'I002', 'Autostrada A1', 'A006', 430);
Insert into Fine values('F023', 'P010', 'C036', '2008-3-27', 'I020', 'Via dei Partigiani', 'A014', 900);
Insert into Fine values('F024', 'P016', 'C043', '2004-10-26', 'I007', 'Strada della Liberazione', 'A011', 91);
Insert into Fine values('F025', 'P007', 'C083', '2009-6-27', 'I001', 'Piazza Pigatora', 'A008', 74);
Insert into Fine values('F026', 'P025', 'C012', '2004-1-20', 'I002', 'Corso dei Giardini Pensili', 'A009', 74);
Insert into Fine values('F027', 'P013', 'C022', '2006-1-11', 'I002', 'Strada del Milite ignoto', 'A009', 84);
Insert into Fine values('F028', 'P022', 'C014', '2016-4-16', 'I013', 'Via de Gasperi', 'A016', 136);
Insert into Fine values('F029', 'P001', 'C031', '2005-10-16', 'I003', 'Piazza Foscolo', 'A010', 91);
Insert into Fine values('F030', 'P031', 'C056', '2006-12-11', 'I011', 'Corso Verdi', 'A003', 91);
Insert into Fine values('F031', 'P030', 'C064', '2017-2-18', 'I015', 'Via Garibaldi', 'A010', 47.5);
Insert into Fine values('F032', 'P011', 'C052', '2018-3-31', 'I014', 'Via Dante Alighieri', 'A013', 99.99);
Insert into Fine values('F033', 'P016', 'C048', '2018-8-21', 'I019', 'Via Garibaldi', 'A017', 450.14);
Insert into Fine values('F034', 'P009', 'C061', '2019-4-4', 'I015', 'Strada Falcone', 'A012', 124);
Insert into Fine values('F035', 'P018', 'C096', '2008-4-28', 'I004', 'Via Argento', 'A012', 74);
Insert into Fine values('F036', null, 'C026', '2004-8-29', 'I004', 'Strada Pascoli', 'A019', 91);
Insert into Fine values('F037', 'P023', 'C087', '2006-10-9', 'I005', 'Piazza della Libertà', 'A011', 430);
Insert into Fine values('F038', 'P021', 'C067', '2007-2-21', 'I013', 'Piazza Mozart', 'A001', 74);
Insert into Fine values('F039', 'P008', 'C055', '2011-4-15', 'I003', 'Strada Risorgimento', 'A016', 97.97);
Insert into Fine values('F040', 'P029', 'C076', '2007-12-4', 'I018', 'Strada Verdi', 'A015', 136);
Insert into Fine values('F041', 'P002', 'C024', '2018-3-1', 'I002', 'Via dello Sviluppo', 'A007', 47.5);
Insert into Fine values('F042', 'P021', 'C028', '2007-3-30', 'I003', 'Strada della Liberazione', 'A009', 91);
Insert into Fine values('F043', 'P007', 'C088', '2017-5-11', 'I001', 'Via Galileo Galilei', 'A003', 120);
Insert into Fine values('F044', 'P031', 'C072', '2014-8-3', 'I001', 'Corso Leonardo da Vinci', 'A013', 74);
Insert into Fine values('F045', 'P004', 'C056', '2004-8-17', 'I016', 'Via  Vittoria', 'A014', 120);
Insert into Fine values('F046', 'P005', 'C077', '2005-11-27', 'I020', 'Corso Cavour', null, 940);
Insert into Fine values('F047', 'P032', 'C053', '2008-5-31', 'I015', 'Corso Risorgimento', 'A015', 74);
Insert into Fine values('F048', 'P028', 'C062', '2015-6-26', 'I004', 'Strada della Libertà', 'A003', 47.5);
Insert into Fine values('F049', 'P019', 'C070', '2008-8-18', 'I011', 'Via John Fitzgerald Kennedy', 'A006', 430);
Insert into Fine values('F050', 'P008', 'C033', '2011-5-23', 'I018', 'Strada Charles Darwin', 'A009', 84);
Insert into Fine values('F051', 'P002', 'C053', '2017-12-2', 'I002', 'Via Mazzini', 'A015', 47.5);
Insert into Fine values('F052', 'P013', 'C094', '2006-7-13', 'I013', 'Via Giovanni', 'A004', 124);
Insert into Fine values('F053', 'P003', 'C059', '2012-6-26', 'I013', 'ViaGiuseppe Impastato', 'A018', 124);
Insert into Fine values('F054', 'P015', 'C030', '2003-2-28', 'I014', 'Via Berlinguer', 'A007', 430);
Insert into Fine values('F055', 'P019', 'C090', '2006-11-15', 'I011', 'Corso Aldo Moro', 'A011', 120);
Insert into Fine values('F056', 'P030', 'C025', '2005-10-8', 'I014', 'Via Argento', 'A008', 47.5);
Insert into Fine values('F057', 'P008', 'C031', '2007-5-24', 'I013', 'Via Galileo Galilei', 'A006', 99.99);
Insert into Fine values('F058', 'P020', 'C052', '2012-6-28', 'I019', 'Strada Charles Darwin', 'A017', 120);
Insert into Fine values('F059', 'P010', 'C091', '2007-11-3', 'I020', 'Via Bosco', 'A006', 84);
Insert into Fine values('F060', 'P016', 'C098', '2012-4-30', 'I002', 'Superstrada S2', 'A014', 124);
Insert into Fine values('F061', 'P032', 'C009', '2006-12-19', 'I013', 'Corso dell''Imperatore', 'A008', 450.19);
Insert into Fine values('F062', 'P001', 'C009', '2004-1-14', 'I013', 'Piazza Pigatora', 'A003', 900);
Insert into Fine values('F063', 'P024', 'C082', '2004-7-22', 'I010', 'Via dell''Opera', 'A016', 91);
Insert into Fine values('F064', 'P009', 'C094', '2007-5-26', 'I009', 'Corso Risorgimento', 'A011', 170);
Insert into Fine values('F065', 'P030', 'C074', '2005-6-23', 'I004', 'Via Garibaldi', 'A008', 136);
Insert into Fine values('F066', 'P019', 'C092', '2019-8-29', 'I017', 'Via Galileo Galilei', 'A003', 98.49);
Insert into Fine values('F067', 'P008', 'C030', '2018-8-10', 'I002', 'Via Marconi', 'A018', 124);
Insert into Fine values('F068', 'P020', 'C073', '2011-5-1', 'I017', 'Via Roma', 'A008', 450.19);
Insert into Fine values('F069', 'P031', 'C055', '2008-10-28', 'I015', 'Via dello Sviluppo', 'A013', 91);
Insert into Fine values('F070', 'P004', 'C027', '2011-7-30', 'I020', 'Via Cavour', 'A011', 190);
Insert into Fine values('F071', 'P013', 'C003', '2009-4-6', 'I017', 'Piazza Bosco', 'A003', 450.14);
Insert into Fine values('F072', 'P028', 'C093', '2008-11-17', 'I013', 'Corso Verdi', 'A004', 900);
Insert into Fine values('F073', 'P015', 'C041', '2008-7-28', 'I014', 'Via Ottaviano', 'A009', 940);
Insert into Fine values('F074', 'P025', 'C032', '2005-1-26', 'I015', 'Via dei Partigiani', 'A005', 900);
Insert into Fine values('F075', 'P030', 'C081', '2007-4-29', 'I014', 'Corso Volta', 'A006', 124);
Insert into Fine values('F076', 'P017', 'C099', '2019-10-24', 'I018', 'Via Dante Alighieri', 'A007', 120);
Insert into Fine values('F077', 'P015', 'C049', '2011-4-12', 'I014', 'Corso Leonardo da Vinci', 'A012', 240);
Insert into Fine values('F078', 'P022', 'C044', '2016-7-12', 'I015', 'Strada della Liberazione', 'A018', 120);
Insert into Fine values('F079', 'P014', 'C042', '2009-7-17', null, 'Piazza della Liberazione', 'A012', 47.5);
Insert into Fine values('F080', 'P002', 'C041', '2012-5-8', 'I009', 'Via Argento', 'A010', 91);
Insert into Fine values('F081', 'P018', 'C002', '2004-8-27', 'I018', 'Via della Repubblica', 'A010', 97);
Insert into Fine values('F082', 'P021', 'C095', '2015-12-5', 'I012', 'Via Verdi', 'A004', 136);
Insert into Fine values('F083', 'P022', null, '2013-10-10', 'I013', 'Via Ottaviano', 'A015', 450.19);
Insert into Fine values('F084', 'P012', 'C042', '2005-10-14', 'I013', 'Piazza Fermi', 'A005', 900);
Insert into Fine values('F085', 'P019', 'C038', '2015-7-26', 'I016', 'Via Galileo Galilei', 'A009', 91);
Insert into Fine values('F086', 'P027', 'C080', '2012-10-12', 'I013', 'Corso Falcone', 'A020', 0);
Insert into Fine values('F087', 'P024', 'C047', '2011-12-13', 'I021', 'Strada della Libertà', 'A005', 900);
Insert into Fine values('F088', 'P024', 'C050', '2009-6-21', 'I016', 'Via Mozart', 'A005', 47.5);
Insert into Fine values('F089', 'P017', 'C032', '2009-5-22', 'I009', 'Via Galileo Galilei', 'A010', 99.99);
Insert into Fine values('F090', 'P016', 'C057', '2019-2-16', 'I002', 'Via Europa', 'A008', 47.5);
Insert into Fine values('F091', 'P007', 'C078', '2013-8-2', 'I017', 'Corso Bosco', 'A004', 240);
Insert into Fine values('F092', 'P011', 'C035', '2006-2-3', 'I021', 'Via Bosco', 'A013', 47.5);
Insert into Fine values('F093', 'P004', 'C007', '2016-2-8', 'I007', 'Via Aldo Moro', 'A006', 99.99);
Insert into Fine values('F094', 'P018', 'C071', '2019-10-27', 'I010', 'Via Dalmazia', 'A004', 136);
Insert into Fine values('F095', 'P030', 'C051', '2013-11-7', 'I017', 'Piazza Foscolo', 'A014', null);
Insert into Fine values('F096', 'P029', 'C042', '2007-6-19', 'I015', 'Corso della Repubblica', 'A008', 120);
Insert into Fine values('F097', 'P020', 'C085', '2018-8-17', 'I010', 'Strada Verdi', 'A009', 99.99);
Insert into Fine values('F098', 'P030', 'C073', '2005-7-22', 'I007', 'Piazza Gramsci', 'A003', 47.5);
Insert into Fine values('F099', 'P022', 'C089', '2009-10-19', 'I003', 'Via Garibaldi', 'A007', 851);
Insert into Fine values('F100', 'P027', 'C039', '2016-2-29', 'I008', 'Via dell''Opera', 'A001', 120);
Insert into Fine values('F101', null, 'C065', '2007-10-20', 'I004', 'Via Roma', 'A004', 124);
Insert into Fine values('F102', 'P022', 'C033', '2007-3-6', 'I014', 'Corso Volta', 'A019', 47.5);
Insert into Fine values('F103', 'P031', 'C039', '2009-10-1', 'I013', 'Via della Repubblica', 'A015', 91);
Insert into Fine values('F104', 'P025', 'C097', '2014-10-23', 'I019', 'Corso Michelangelo', 'A001', 99.99);
Insert into Fine values('F105', 'P030', 'C008', '2015-1-11', 'I018', 'Strada Charles Darwin', 'A011', 84);
Insert into Fine values('F106', 'P029', 'C047', '2010-2-18', 'I010', 'Via Leonardo da Vinci', 'A013', 430);
Insert into Fine values('F107', 'P005', 'C036', '2005-8-16', 'I017', 'Piazza della Croce Rossa', 'A004', 450.14);
Insert into Fine values('F108', 'P014', 'C096', '2008-4-15', 'I020', 'Piazza Vittorio Emanuele', 'A007', 620);
Insert into Fine values('F109', 'P011', 'C074', '2014-3-3', 'I013', 'Piazza della Libertà', 'A016', 124);
Insert into Fine values('F110', 'P016', 'C075', '2012-11-2', 'I002', 'Via della Repubblica', 'A008', 91);
Insert into Fine values('F111', 'P017', 'C037', '2006-11-7', 'I013', 'Piazza Mazzini', 'A008', 124);
Insert into Fine values('F112', 'P028', null, '2005-4-19', 'I005', 'Via Mozart', 'A011', 900);
Insert into Fine values('F113', 'P024', 'C048', '2004-11-20', 'I009', 'Strada Dante Alighieri', 'A017', 136);
Insert into Fine values('F114', 'P019', 'C079', '2011-10-29', 'I016', 'Corso dell''Imperatore', 'A005', 74);
Insert into Fine values('F115', 'P023', 'C064', '2011-12-24', 'I015', 'Via Aldo Moro', 'A006', 74);
Insert into Fine values('F116', 'P023', 'C077', '2015-10-28', 'I012', 'Piazza Pigatora', 'A017', 124);
Insert into Fine values('F117', 'P032', 'C081', '2009-5-13', 'I020', 'Piazza Bosco', 'A001', 99.99);
Insert into Fine values('F118', 'P003', 'C029', '2007-4-5', 'I003', 'Strada Cristoforo Colombo', 'A007', 99.99);
Insert into Fine values('F119', 'P023', 'C057', '2013-10-28', 'I013', 'Via Garibaldi', 'A017', 74);
Insert into Fine values('F120', 'P024', 'C060', '2011-4-30', 'I018', 'Via Bosco', 'A005', 124);
Insert into Fine values('F121', 'P031', 'C009', '2009-11-24', 'I019', 'Via Dalmazia', 'A006', 99.99);
Insert into Fine values('F122', 'P010', 'C028', '2016-11-26', 'I010', 'Strada Verdi', 'A013', 124);
Insert into Fine values('F123', 'P019', 'C051', '2006-7-2', 'I014', 'Strada Cristoforo Colombo', 'A001', 240);
Insert into Fine values('F124', 'P025', 'C069', '2007-10-26', 'I012', 'Via Dante Alighieri', 'A012', 74);
Insert into Fine values('F125', 'P006', 'C085', '2012-10-6', 'I015', 'Via John Fitzgerald Kennedy', null, 99.99);
Insert into Fine values('F126', 'P008', 'C037', '2005-7-29', 'I010', 'Via Vittorio Emanuele', 'A005', 901);
Insert into Fine values('F127', null, 'C100', '2005-5-16', 'I003', 'Piazza Mozart', 'A005', 74);
Insert into Fine values('F128', 'P028', 'C025', '2013-11-4', 'I015', 'Corso dei Giardini Pensili', 'A018', 99.99);
Insert into Fine values('F129', 'P007', 'C023', '2015-8-24', 'I004', 'Corso Cavour', 'A003', 850);
Insert into Fine values('F130', 'P009', 'C040', '2018-4-22', 'I003', 'Corso Michelangelo', 'A006', 450.14);
Insert into Fine values('F131', 'P009', 'C075', '2006-5-13', 'I019', 'Piazza Bosco', 'A015', 900);
Insert into Fine values('F132', 'P013', 'C010', '2018-6-27', 'I016', 'Autostrada A2', 'A001', 451.14);
Insert into Fine values('F133', 'P023', 'C063', '2019-11-17', 'I020', 'Via Galileo Galilei', 'A012', 900);
Insert into Fine values('F134', 'P018', 'C024', '2013-12-19', 'I016', 'Piazza Berlinguer', 'A013', 99.99);
Insert into Fine values('F135', 'P022', 'C011', '2007-6-21', 'I017', 'Via Garibaldi', 'A005', 0);
Insert into Fine values('F136', 'P012', 'C071', '2006-10-4', 'I018', 'Strada della Liberazione', 'A019', 450.14);
Insert into Fine values('F137', 'P032', 'C050', '2005-8-6', 'I008', 'Via Dante Alighieri', 'A010', 91);
Insert into Fine values('F138', 'P020', 'C080', '2009-1-29', 'I008', 'Via della Repubblica', 'A008', 120);
Insert into Fine values('F139', 'P032', 'C030', '2005-7-16', 'I016', 'Via Galileo Galilei', 'A009', 91);
Insert into Fine values('F140', 'P029', 'C086', null, 'I020', 'Piazza Gramsci', 'A017', 91);
Insert into Fine values('F141', 'P005', 'C096', '2019-1-2', 'I001', 'Via dei Partigiani', 'A006', 99.99);
Insert into Fine values('F142', 'P017', 'C050', '2009-2-23', 'I012', 'Via Europa', 'A016', 120);
Insert into Fine values('F143', 'P029', 'C099', '2004-11-8', 'I001', 'Strada della Liberazione', 'A018', 99.99);
Insert into Fine values('F144', 'P004', 'C029', '2016-12-30', 'I004', 'Via XXV Aprile', 'A014', 451.14);
Insert into Fine values('F145', null, 'C060', '2019-4-9', 'I019', 'Corso Aldo Moro', 'A007', 0);
Insert into Fine values('F146', 'P017', 'C098', '2008-10-11', 'I001', 'Via Pascoli', 'A009', 177);
Insert into Fine values('F147', 'P005', 'C068', '2007-4-12', 'I003', 'Piazza Bosco', 'A007', 940);
Insert into Fine values('F148', 'P001', 'C078', '2018-10-30', 'I001', 'Via Mameli', 'A003', 939);
Insert into Fine values('F149', 'P012', 'C047', '2011-7-20', 'I021', 'Strada XXV Aprile', 'A016', 91);
Insert into Fine values('F150', 'P004', 'C029', '2014-3-27', 'I014', 'Piazza Mazzini', 'A016', 91);
Insert into Fine values('F151', 'P001', 'C021', '2013-10-4', 'I016', 'Via de Gasperi', 'A011', 91);
Insert into Fine values('F152', 'P031', null, '2012-3-26', 'I003', 'Via della Repubblica', 'A019', 124);
Insert into Fine values('F153', 'P001', 'C084', '2005-10-19', 'I001', 'Superstrada S1', 'A018', 900);
Insert into Fine values('F154', 'P021', 'C094', '2004-10-28', 'I002', 'Strada del Milite ignoto', 'A014', 120);
Insert into Fine values('F155', 'P028', 'C063', null, 'I017', 'Corso Charles Darwin', 'A003', 900);
Insert into Fine values('F156', 'P015', 'C055', '2008-6-26', 'I001', 'Piazza Leonardo da Vinci', 'A009', 240);
Insert into Fine values('F157', 'P005', 'C046', '2005-10-15', 'I019', 'Piazza della Liberazione', 'A003', 99.99);
Insert into Fine values('F158', 'P016', 'C034', '2011-7-18', 'I015', 'Via Vittorio Emanuele', 'A018', 47.5);
Insert into Fine values('F159', 'P012', 'C046', '2005-7-30', 'I012', 'Via Verdi', 'A015', 900);
Insert into Fine values('F160', 'P025', 'C027', '2014-10-17', 'I003', 'Via Garibaldi', 'A004', 84);
Insert into Fine values('F161', 'P006', 'C059', '2006-10-16', 'I003', 'Via Cavour', 'A004', 900);
Insert into Fine values('F162', 'P027', 'C048', null, 'I018', 'Corso Cavour', 'A001', 240);
Insert into Fine values('F163', 'P002', 'C040', '2013-8-21', 'I015', 'Via Verdi', 'A012', 91);
Insert into Fine values('F164', 'P027', 'C083', '2006-8-21', 'I015', 'Piazza Mozart', 'A012', 240);
Insert into Fine values('F165', 'P020', 'C087', '2008-6-21', 'I017', 'Autostrada A1', 'A018', 91);
Insert into Fine values('F166', 'P018', 'C066', '2006-4-17', 'I015', 'Piazza Vittorio Emanuele', 'A006', 240);
Insert into Fine values('F167', 'P015', 'C041', '2007-6-20', 'I014', 'Corso della Repubblica', 'A004', 900);
Insert into Fine values('F168', 'P014', 'C031', '2009-6-29', 'I014', 'Via Mazzini', 'A014', 74);
Insert into Fine values('F169', 'P028', 'C046', '2013-11-7', 'I017', 'Corso Falcone', null, 940);
Insert into Fine values('F170', 'P020', 'C044', '2018-10-29', 'I001', 'Corso Bosco', 'A006', 900);
Insert into Fine values('F171', 'P031', 'C091', '2012-7-1', 'I016', 'Strada XXV Aprile', 'A010', 900);
Insert into Fine values('F172', 'P028', 'C054', '2004-7-20', 'I002', 'Strada Risorgimento', 'A017', 91);
Insert into Fine values('F173', 'P018', 'C044', '2010-11-14', 'I013', 'Strada Dante Alighieri', 'A012', 450.14);
Insert into Fine values('F174', 'P010', 'C023', '2013-8-10', 'I001', 'Piazza John Fitzgerald Kennedy', 'A019', 120);
Insert into Fine values('F175', 'P029', 'C043', '2015-8-23', 'I011', 'Piazza Fermi', 'A007', null);
Insert into Fine values('F176', 'P002', 'C001', '2006-5-3', 'I019', 'Piazza Fermi', 'A004', 91);
Insert into Fine values('F177', 'P012', 'C040', '2007-10-29', 'I014', 'Strada Dante Alighieri', 'A013', 74);
Insert into Fine values('F178', 'P014', 'C082', '2005-2-27', 'I008', 'Via Marconi', 'A010', 74);
Insert into Fine values('F179', 'P018', 'C049', '2017-7-22', 'I020', 'Piazza Vittorio Emanuele', 'A012', 450.14);
Insert into Fine values('F180', 'P003', 'C072', '2008-11-10', 'I008', 'Via Pascoli', 'A008', 91);
Insert into Fine values('F181', 'P013', 'C051', '2014-6-16', 'I016', 'Strada del Milite ignoto', 'A001', 900);
Insert into Fine values('F182', 'P025', 'C035', '2004-4-14', 'I007', 'Corso Charles Darwin', 'A014', 120);
Insert into Fine values('F183', 'P003', 'C092', '2016-2-6', 'I021', 'Piazza John Fitzgerald Kennedy', 'A016', 430);
Insert into Fine values('F184', 'P021', 'C049', '2019-10-20', 'I004', 'Via Ottaviano', 'A007', 99.99);
Insert into Fine values('F185', 'P031', 'C061', '2017-11-18', 'I005', 'Piazza Roma', 'A017', 450.14);
Insert into Fine values('F186', 'P006', 'C070', '2008-6-21', 'I001', 'Via Mazzini', 'A001', 940);
Insert into Fine values('F187', 'P011', 'C027', '2019-11-19', 'I005', 'Corso Charles Darwin', 'A005', 99.99);
Insert into Fine values('F188', 'P027', 'C038', '2007-8-27', 'I003', 'Piazza Berlinguer', 'A014', 84);
Insert into Fine values('F189', 'P028', 'C045', '2008-7-9', 'I014', 'Corso Aldo Moro', 'A015', 900);
Insert into Fine values('F190', 'P006', 'C098', '2008-1-23', 'I014', 'Strada XXV Aprile', 'A014', 120);
Insert into Fine values('F191', 'P007', 'C093', '2010-3-7', 'I004', 'Via Berlinguer', 'A012', 120);
Insert into Fine values('F192', 'P024', 'C008', '2017-6-12', 'I019', 'Via Roma', 'A001', 99.99);
Insert into Fine values('F193', 'P032', 'C090', '2006-10-9', 'I004', 'ViaGiuseppe Impastato', 'A007', 451.14);
Insert into Fine values('F194', 'P032', 'C097', '2006-11-16', 'I011', 'Via XXV Aprile', 'A004', 900);
Insert into Fine values('F195', 'P003', null, '2018-10-24', 'I001', 'Corso Leonardo da Vinci', 'A003', 91);
Insert into Fine values('F196', 'P006', 'C099', '2012-12-5', 'I020', 'Via dell''Opera', 'A008', 74);
Insert into Fine values('F197', 'P017', 'C034', '2014-3-13', 'I005', 'Via Mozart', 'A009', 74);
Insert into Fine values('F198', 'P025', 'C010', '2008-10-15', 'I002', 'Corso Verdi', 'A013', 120);
Insert into Fine values('F199', 'P029', 'C097', '2008-8-28', 'I015', 'Strada Pascoli', 'A010', 99.99);
Insert into Fine values('F200', 'P029', 'C022', '2015-3-7', 'I020', null, 'A005', 0);