PRAGMA foreign_keys = OFF;

BEGIN;

SAVEPOINT dump;

CREATE TABLE "DIAGNOSTICOS" (
    Codigo TEXT NOT NULL PRIMARY KEY
  , Descripcion TEXT NOT NULL
  , UNIQUE(Codigo)
);

INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J00', 'Rinofaringitis aguda [resfriado común]');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J01', 'Sinusitis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J02', 'Faringitis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J03', 'Amigdalitis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J04', 'Laringitis y traqueitis agudas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J05', 'Laringitis obstructiva aguda [crup] y epiglotitis');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J06', 'Infecciones agudas de las vías respiratorias superiores, de sitios múltiples o no especificados');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J10', 'Influenza debida a virus de la influenza identificado');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J11', 'Influenza debida a virus no identificado');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J12', 'Neumonía viral, no clasificada en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J13', 'Neumonía debida a Streptococcus pneumoniae');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J14', 'Neumonía debida a Haemophilus influenzae');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J15', 'Neumonía bacteriana, no clasificada en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J16', 'Neumonía debida a oíros microorganismos infecciosos, no clasificados en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J17', 'Neumonía en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J18', 'Neumonía, organismo no especificado');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J20', 'Bronquitis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J21', 'Bronquiolitis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J22', 'Infección aguda no especificada de las vías respiratorias inferiores');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J30', 'Rinitis alérgica y vasomotora');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J31', 'Rinitis, rinofaringitis y faringitis crónicas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J32', 'Sinusitis crónica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J33', 'Pólipo nasal');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J34', 'Otros trastornos de la nariz y de los senos paranasales');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J35', 'Enfermedades crónicas de las amígdalas y de las adenoides');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J36', 'Absceso periamigdalino');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J37', 'Laringitis y laringotraqueitis crónicas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J38', 'Enfermedades de las cuerdas vocales y de la laringe, no clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J39', 'Otras enfermedades de las vías respiratorias superiores');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J40', 'Bronquitis, no especificada como aguda o crónica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J41', 'Bronquitis crónica simple y mucopurulenta');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J42', 'Bronquitis crónica no especificada');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J43', 'Enfisema');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J44', 'Otras enfermedades pulmonares obstructivas crónicas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J45', 'Asma');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J46', 'Estado asmático');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J47', 'Bronquiectasia');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J60', 'Neumoconiosis de los mineros del carbón');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J61', 'Neumoconiosis debida al asbesto y a otras fibras minerales');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J62', 'Neumoconiosis debida a polvo de sílice');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J63', 'Neumoconiosis debida a otros polvos inorgánicos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J64', 'Neumoconiosis, no especificada');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J65', 'Neumoconiosis asociada con tuberculosis');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J66', 'Enfermedades de las vías aéreas debidas a polvos orgánicos específicos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J67', 'Neumonitis debida a hipersensibilidad al polvo orgánico');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J68', 'Afecciones respiratorias debidas a inhalación de gases, humos, vapores y sustancias químicas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J69', 'Neumonitis debida a sólidos y líquidos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J70', 'Afecciones respiratorias debidas a otros agentes externos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J80', 'Síndrome de dificultad respiratoria del adulto');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J81', 'Edema pulmonar');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J82', 'Eosinofilia pulmonar, no clasificada en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J84', 'Otras enfermedades pulmonares intersticiales');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J85', 'Absceso del pulmón y del mediastino J86 Piotorax');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J90', 'Derrame pleural no clasificado en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J91', 'Derrame pleural en afecciones clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J92', 'Paquipleuritis');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J93', 'Neumotorax');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J94', 'Otras afecciones de la pleura');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J95', 'Trastornos del sistema respiratorio consecutivos a procedimientos, no');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J96', 'Insuficiencia respiratoria, no clasificada en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J98', 'Otros trastornos respiratorios');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('J99', 'Trastornos respiratorios en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I00', 'Fiebre reumática sin mención de complicación cardiaca');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I01', 'Fiebre reumática con complicación cardiaca');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I02', 'Corea reumática');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I05', 'Enfermedades reumáticas de la válvula mitral');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I06', 'Enfermedades reumáticas de la válvula aórtica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I07', 'Enfermedades reumáticas de la válvula tricúspide');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I08', 'Enfermedades valvulares múltiples');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I09', 'Otras enfermedades reumáticas del corazón');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I10', 'Hipertensión esencial (primaria)');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I11', 'Enfermedad cardiaca hipertensiva');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I12', 'Enfermedad renal hipertensiva');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I13', 'Enfermedad cardiorrenal hipertensiva');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I15', 'Hipertensión secundaria');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I20', 'Angina de pecho');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I21', 'Infarto agudo del miocardio');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I22', 'Infarto subsecuente del miocardio');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I23', 'Ciertas complicaciones presentes posteriores al infarto agudo del miocardio');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I24', 'Otras enfermedades isquémicas agudas del corazón');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I25', 'Enfermedad isquémica crónica del corazón');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I26', 'Embolia pulmonar');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I27', 'Otras enfermedades cardiopulmonares');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I28', 'Otras enfermedades de los vasos pulmonares');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I30', 'Pericarditis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I31', 'Otras enfermedades del pericardio');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I32', 'Pericarditis en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I33', 'Endocarditis aguda y subaguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I34', 'Trastornos no reumáticos de la válvula mitral');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I35', 'Trastornos no reumáticos de la válvula aórtica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I36', 'Trastornos no reumáticos de la válvula tricúspide');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I37', 'Trastornos de la válvula pulmonar');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I38', 'Endocarditis, válvula no especificada');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I39', 'Endocarditis y trastornos valvulares en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I40', 'Miocarditis aguda');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I41', 'Miocarditis en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I42', 'Cardiomiopatia');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I43', 'Cardiomiopatia en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I44', 'Bloqueo auriculoventricular y de rama izquierda del haz');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I45', 'Otros trastornos de la conducción');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I46', 'Paro cardiaco');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I47', 'Taquicardia paroxistica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I48', 'Fibrilacion y aleteo auricular');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I49', 'Otras arritmias cardiacas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I50', 'Insuficiencia cardiaca');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I51', 'Complicaciones y descripciones mal definidas de enfermedad cardiaca');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I52', 'Otros trastornos cardiacos en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I60', 'Hemorragia subaracnoidea');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I61', 'Hemorragia intraencefalica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I62', 'Otras hemorragias intracraneales no traumáticas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I63', 'Infarto cerebral');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I64', 'Accidente vascular encefálico agudo, no especificado como hemorrágico o isquémico');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I65', 'Oclusión y estenosis de las arterias precerebrales sin ocasionar infarto cerebral');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I66', 'Oclusión y estenosis de las arterias cerebrales sin ocasionar infarto cerebral');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I67', 'Otras enfermedades cerebrovasculares');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I68', 'Trastornos cerebrovasculares en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I69', 'Secuelas de enfermedad cerebrovascular');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I70', 'Arteriosclerosis');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I71', 'Aneurisma y disección aórticos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I72', 'Otros aneurismas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I73', 'Otras enfermedades vasculares periféricas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I74', 'Embolia y trombosis arteriales');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I77', 'Otros trastornos arteriales o arteriolares');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I78', 'Enfermedades de los vasos capilares');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I79', 'Trastornos de las arterias, de las arteriolas y de los vasos capilares en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I80', 'Flebitis y tromboflebitis');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I81', 'Trombosis de la vena porta');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I82', 'Otras embolias y trombosis venosas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I83', 'Venas varicosas de los miembros inferiores');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I84', 'Hemorroides');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I85', 'Varices esofágicas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I86', 'Varices de otros sitios');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I87', 'Otros trastornos de las venas');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I88', 'Linfadenitis inespecifica');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I89', 'Otros trastornos no infecciosos de los vasos y ganglios linfáticos');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I95', 'Hipotensión');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I97', 'Trastornos del sistema circulatorio consecutivos a procedimientos, no');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I98', 'Otros trastornos del sistema circulatorio en enfermedades clasificadas en otra parte');
INSERT INTO DIAGNOSTICOS(Codigo, Descripcion) VALUES('I99', 'Otros trastornos y los no especificados del sistema circulatorio');

CREATE TABLE EXAMENES (
    Codigo TEXT NOT NULL PRIMARY KEY
  , Descripcion TEXT NOT NULL
  , Modalidad TEXT NOT NULL
  , UNIQUE(Codigo)
);

INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('719485007', 'X-ray tomography of abdomen', 'TC');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('275734002', 'Abdominal X-ray normal', 'RX');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('416323006', 'PET breast study', 'MN');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('4231000179109', 'Mammography report', 'MG');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('7174001', 'Ultrasound peripheral imaging, B-scan', 'US');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('711184004', 'MRI of head and cervical spine', 'RM');
INSERT INTO EXAMENES(Codigo, Descripcion, Modalidad) VALUES('128307000', 'Normal radiologic density', 'DX');

CREATE TABLE L_RESIDENCIA (
    Codigo TEXT NOT NULL PRIMARY KEY
  , Descripcion TEXT NOT NULL
  , UNIQUE(Codigo)
);

INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('001', 'Australia');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('002', 'Austria');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('003', 'Belgium');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('004', 'Brazil');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('005', 'Canada');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('006', 'Chile');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('007', 'China');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('008', 'Colombia');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('009', 'Costa Rica');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('010', 'France');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('011', 'Germany');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('012', 'India');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('013', 'Indonesia');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('014', 'Ireland');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('015', 'Mexico');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('016', 'Netherlands');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('017', 'New Zealand');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('018', 'Norway');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('019', 'Pakistan');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('020', 'Peru');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('021', 'Philippines');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('022', 'Poland');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('023', 'Russian Federation');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('024', 'Singapore');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('025', 'South Africa');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('026', 'Spain');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('027', 'Sweden');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('028', 'Turkey');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('029', 'Ukraine');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('030', 'United Kingdom');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('031', 'United States');
INSERT INTO L_RESIDENCIA(Codigo, Descripcion) VALUES('032', 'Vietnam');

CREATE TABLE "MODALIDADES" (
    Codigo TEXT NOT NULL PRIMARY KEY
  , Descripcion TEXT NOT NULL
  , UNIQUE(Codigo)
);

INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('MG', 'Mamografia');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('RM', 'Resonancia Magnetica');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('TC', 'Tomografia');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('RX', 'Rayos X');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('DX', 'Rayos X Digital');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('US', 'Ultrasonido');
INSERT INTO MODALIDADES(Codigo, Descripcion) VALUES('MN', 'Medicina Nuclear');

CREATE TABLE OT (
    Numero TEXT NOT NULL PRIMARY KEY
  , T_Identificacion TEXT NOT NULL
  , Identificacion TEXT NOT NULL
  , Diagnostico TEXT NOT NULL
  , F_Realizacion TEXT NOT NULL
  , UNIQUE(Numero)
);

INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1000', 'CC', '16303150', 'J11', '14/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1001', 'CC', '16303150', 'J12', '15/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1002', 'CC', '16303150', 'J13', '16/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1003', 'CC', '16303150', 'J14', '17/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1004', 'CC', '16303150', 'J15', '18/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1005', 'CC', '36654138', 'J16', '19/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1006', 'CC', '36654138', 'J17', '20/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1007', 'CC', '36654138', 'J18', '21/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1008', 'CC', '36654138', 'J20', '22/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1009', 'CC', '36654138', 'J20', '23/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1010', 'CC', '58036842', 'J21', '24/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1011', 'CC', '58036842', 'J22', '25/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1012', 'CC', '58036842', 'J30', '26/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1013', 'CC', '58036842', 'J30', '27/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1014', 'CC', '58036842', 'J31', '28/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1015', 'CE', '29165139', 'J32', '29/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1016', 'CE', '29165139', 'J33', '30/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1017', 'CE', '29165139', 'J34', '31/10/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1018', 'CE', '29165139', 'J35', '1/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1019', 'CE', '29165139', 'J36', '2/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1020', 'TI', '10428132', 'J37', '3/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1021', 'TI', '10428132', 'I01', '4/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1022', 'TI', '10428132', 'I02', '5/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1023', 'TI', '10428132', 'I07', '6/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1024', 'TI', '10428132', 'I07', '7/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1025', 'TI', '14808423', 'I08', '8/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1026', 'TI', '14808423', 'I06', '9/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1027', 'TI', '14808423', 'I07', '10/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1028', 'TI', '14808423', 'I08', '11/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1029', 'TI', '14808423', 'I09', '12/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1030', 'CE', '70838724', 'J33', '13/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1031', 'CE', '70838724', 'J34', '14/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1032', 'CE', '70838724', 'J35', '15/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1033', 'CE', '70838724', 'J36', '16/11/2022');
INSERT INTO OT(Numero, T_Identificacion, Identificacion, Diagnostico, F_Realizacion) VALUES('1034', 'CE', '70838724', 'J37', '17/11/2022');

CREATE TABLE "PACIENTES" (
    T_Identificacion TEXT
  , Identificacion TEXT
  , Nombres TEXT
  , Apellidos TEXT
  , Sexo TEXT
  , F_Nacimiento TEXT
  , Direccion TEXT
  , Telefonos TEXT
  , L_Residencia TEXT
);

INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '57367542', 'Hall', 'Hopkins', 'M', '15/04/2012', 'Ap #416-334 Sagittis Ave', '(878) 686-1925', '022');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '44856066', 'Nayda', 'Parks', 'F', '11/03/2010', '274-8488 Sodales. Av.', '(572) 123-9404', '022');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '70325682', 'Ali', 'Noel', 'M', '12/02/2014', 'P.O. Box 907, 1923 Et, Avenue', '(368) 767-9036', '013');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '49611531', 'Macon', 'Jordan', 'M', '26/10/2008', '9672 Eu Road', '(423) 416-7343', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '04875585', 'Gay', 'Landry', 'M', '26/10/2010', '274-2753 Quisque Road', '(279) 307-7740', '013');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '62581386', 'Ora', 'Holmes', 'F', '11/05/2009', '334-9351 Varius. Rd.', '(643) 372-7940', '023');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '35368582', 'Ian', 'Sharp', 'M', '25/08/2009', 'Ap #744-866 Non Avenue', '(685) 846-3583', '020');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '37001544', 'Hollee', 'Huff', 'M', '17/01/2015', '1880 Eu, Rd.', '(312) 664-5337', '032');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '55521581', 'Hakeem', 'Daniel', 'M', '10/01/2014', 'Ap #858-7955 Sed St.', '(634) 552-4754', '014');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '58572783', 'Amal', 'Maynard', 'M', '14/11/2011', '362-7895 Quisque Road', '(587) 452-7634', '005');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '88725647', 'Teagan', 'Newton', 'F', '31/03/2012', 'Ap #432-9860 Cras Road', '(492) 788-0700', '021');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '64424463', 'Prescott', 'Garza', 'M', '09/08/2008', '213-2155 Quisque St.', '(114) 827-6319', '021');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '05351365', 'Melinda', 'Pena', 'F', '04/10/2013', '410-4063 Ultricies Rd.', '(583) 235-0848', '012');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '64608149', 'Candace', 'Conway', 'M', '23/11/2010', 'Ap #982-7044 Et, Street', '(428) 336-5401', '004');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '82542856', 'Kai', 'Holmes', 'M', '18/05/2010', '625-4165 Dictum Avenue', '(335) 882-0212', '026');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '63352827', 'Allistair', 'Knox', 'M', '14/05/2013', '9608 Nascetur Street', '(379) 565-7334', '004');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '06805364', 'Judah', 'Delacruz', 'M', '05/01/2011', '9284 Sagittis. St.', '(287) 314-6457', '020');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '18802328', 'Inez', 'Byers', 'F', '02/11/2010', 'P.O. Box 866, 1970 Tellus Street', '(612) 942-1278', '026');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '69611374', 'Cassady', 'Ward', 'M', '31/12/2014', 'Ap #762-7446 Consectetuer St.', '(689) 107-1662', '017');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '52125242', 'Jacob', 'Chan', 'M', '18/06/2013', 'Ap #331-3773 Pede, St.', '(831) 867-1946', '018');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '57376823', 'Boris', 'Colon', 'M', '09/08/2012', 'P.O. Box 849, 3049 Torquent Avenue', '(253) 655-6721', '001');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '22144638', 'Yetta', 'Benjamin', 'F', '18/05/2010', 'P.O. Box 187, 3910 Urna. Ave', '(666) 328-2507', '015');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '70116984', 'Iola', 'Rowe', 'F', '20/07/2014', 'Ap #303-2836 Vitae, Ave', '(884) 542-7300', '014');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '44325271', 'Xanthus', 'Briggs', 'M', '25/07/2013', '133-3644 Odio. Rd.', '(461) 375-4143', '031');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '84203246', 'Nichole', 'Matthews', 'F', '23/02/2010', 'Ap #486-6199 Lorem Av.', '(684) 969-6458', '029');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '33561476', 'Hoyt', 'Walsh', 'M', '05/10/2010', 'Ap #147-5511 Felis. Av.', '(891) 883-9242', '009');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '51163512', 'Candace', 'Martin', 'F', '12/02/2011', '4143 Mattis. Rd.', '(423) 334-8145', '012');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '29579163', 'Lucas', 'Pitts', 'M', '09/09/2014', '912-8036 Ornare Rd.', '(234) 752-0164', '030');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '37401227', 'Allegra', 'Dickson', 'F', '24/07/2014', '953-6230 Pede. Rd.', '(137) 343-9121', '025');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '25314573', 'Zena', 'Wagner', 'F', '13/05/2010', 'Ap #173-8382 Sociis St.', '(902) 682-3228', '005');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '42876082', 'Diana', 'Christian', 'F', '26/05/2009', '255-6771 Eleifend Rd.', '(452) 510-6725', '018');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '88340364', 'Honorato', 'Sloan', 'M', '07/03/2011', '787-9481 Vitae Ave', '(538) 416-1825', '030');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '44583689', 'Cecilia', 'Green', 'F', '25/11/2008', 'P.O. Box 481, 1496 Per Street', '(796) 285-2252', '008');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '07059511', 'Lillian', 'Hayden', 'F', '25/07/2010', '394 Non St.', '(520) 313-6811', '005');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '02488714', 'Britanney', 'Ball', 'F', '08/11/2009', '8696 In Rd.', '(256) 528-2823', '013');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '61470634', 'Callie', 'Allen', 'F', '19/04/2009', '194-8089 Nec Ave', '(361) 384-0355', '015');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '78203334', 'Howard', 'Case', 'M', '28/03/2009', '476-8058 Eu, Avenue', '(977) 765-2431', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '25764427', 'Gannon', 'Robinson', 'M', '04/03/2015', 'Ap #783-6292 Ac Rd.', '(221) 744-5272', '016');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '53151886', 'Owen', 'Pratt', 'M', '04/09/2008', 'Ap #472-6609 Nulla Rd.', '(677) 862-5131', '030');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '36067234', 'Yoshio', 'Sweet', 'M', '24/05/2008', 'P.O. Box 144, 7438 Id, Rd.', '(673) 874-6862', '025');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '67832641', 'Lamar', 'Cooley', 'M', '31/05/2010', 'P.O. Box 473, 3807 Nec Rd.', '(752) 758-0338', '004');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '74534530', 'Larissa', 'Fisher', 'F', '12/06/2008', 'Ap #760-6005 Vel St.', '(623) 580-6335', '025');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '58285532', 'Jakeem', 'Lewis', 'M', '24/09/2011', 'Ap #427-8118 A, Ave', '(747) 595-5651', '024');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '21278966', 'Zahir', 'Petersen', 'M', '05/10/2009', '362-3458 Ultrices. Rd.', '(224) 256-0728', '014');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '41338162', 'Karen', 'Nichols', 'F', '18/04/2010', '361-8883 Eget Road', '(231) 258-6446', '020');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '54880172', 'Carlos', 'Lawrence', 'M', '27/10/2008', '264-6517 Eu Rd.', '(888) 791-8035', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '80466987', 'Hedley', 'Wilkerson', 'M', '31/10/2013', 'Ap #217-7015 Lorem, St.', '(877) 404-7513', '032');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '05078573', 'Olivia', 'Shepherd', 'F', '18/09/2009', '182-1562 Nulla St.', '(253) 253-2575', '008');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '53164381', 'Breanna', 'Levine', 'F', '08/06/2014', '805-9586 Nulla Road', '(753) 340-5867', '009');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '39565303', 'Anthony', 'Juarez', 'M', '23/03/2010', '5655 Pellentesque Road', '(994) 748-5042', '013');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '94109760', 'Kelly', 'Rollins', 'M', '25/08/2009', '9949 Sem Avenue', '(282) 679-6473', '011');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '29165139', 'Constance', 'Mathis', 'M', '16/02/2013', 'Ap #187-8435 Mattis. Avenue', '(661) 659-4115', '019');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '78313692', 'Zephr', 'Jenkins', 'M', '14/01/2014', 'P.O. Box 536, 2804 Nec, Av.', '(214) 897-8761', '018');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '43014547', 'Elliott', 'Stanton', 'M', '06/02/2015', '493-3401 Arcu Av.', '(784) 684-0719', '006');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '69141932', 'Julie', 'Pittman', 'F', '07/01/2009', 'Ap #762-8046 Consectetuer St.', '(711) 891-4747', '017');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '17882613', 'Leigh', 'Maddox', 'M', '06/09/2014', '811-1834 Nisi. St.', '(284) 866-1615', '019');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '98955648', 'Adria', 'Santiago', 'F', '27/06/2014', '3921 Nam St.', '(526) 502-4382', '020');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '36654138', 'Jelani', 'Bishop', 'M', '15/09/2012', '7009 Malesuada St.', '(132) 479-3915', '027');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '46281893', 'John', 'Wilson', 'M', '12/09/2014', 'P.O. Box 158, 4717 Magna, Ave', '(587) 826-8515', '008');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '12972518', 'Kasper', 'Keith', 'M', '13/04/2014', 'P.O. Box 796, 2118 Lacinia St.', '(405) 602-5426', '016');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '37618184', 'Lucian', 'Levy', 'M', '09/08/2015', 'Ap #313-7012 Id Rd.', '(417) 441-8177', '019');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '36543166', 'Sage', 'Conner', 'M', '22/08/2011', 'P.O. Box 559, 8154 Ullamcorper Rd.', '(851) 662-7542', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '32398770', 'Brody', 'Dean', 'M', '04/09/2015', 'Ap #405-1365 Mollis Rd.', '(482) 803-7159', '003');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '58442985', 'Adara', 'Harvey', 'F', '21/09/2011', 'Ap #535-9556 Sed St.', '(773) 983-8720', '012');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '64440223', 'Yoshio', 'Freeman', 'M', '05/10/2014', 'Ap #859-5005 Nam Av.', '(942) 482-4141', '021');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '67487731', 'Yoshio', 'Mckay', 'M', '26/02/2009', '562-5485 In Rd.', '(697) 224-6991', '028');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '40285278', 'Porter', 'Wong', 'M', '27/11/2008', '593-1213 Arcu. Road', '(345) 668-3886', '012');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '86312590', 'Haviva', 'Paul', 'F', '31/12/2011', 'Ap #643-9482 Suspendisse Rd.', '(810) 842-2658', '004');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '27316779', 'Bevis', 'Winters', 'M', '19/11/2012', '991-7391 Sem Ave', '(576) 483-7146', '027');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '34950535', 'Caesar', 'Evans', 'M', '19/06/2014', 'Ap #517-5931 Vivamus Street', '(532) 461-4654', '031');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '27123236', 'Chaney', 'Levine', 'M', '25/10/2015', '819-1029 Sociis Rd.', '(349) 856-0375', '030');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '14808423', 'Alexis', 'Cortez', 'F', '08/10/2011', '997-6885 Mi Avenue', '(663) 624-8162', '004');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '51935148', 'Wang', 'Carey', 'M', '04/05/2011', '8321 Enim. Street', '(738) 493-1327', '013');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '34831317', 'Tanisha', 'Hickman', 'F', '19/02/2010', '421-370 Parturient Street', '(421) 748-6670', '009');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '43667847', 'Edward', 'Pruitt', 'M', '28/08/2012', '550-6750 Neque St.', '(234) 447-6454', '030');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '16303150', 'Kaye', 'Sheppard', 'M', '18/11/2012', 'P.O. Box 351, 9987 Nunc Rd.', '(556) 279-6536', '023');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '36542447', 'Fredericka', 'Bradford', 'F', '05/02/2011', '755-2929 Diam Ave', '(366) 310-0977', '032');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '02402152', 'Mia', 'Sullivan', 'F', '14/07/2009', 'Ap #703-7601 Ornare Av.', '(983) 867-1455', '027');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '79586683', 'Ira', 'Carney', 'F', '04/12/2008', '314-3367 Odio St.', '(652) 556-6707', '010');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '87218486', 'Nevada', 'Hamilton', 'F', '25/08/2008', '2046 Convallis Av.', '(614) 294-2585', '016');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '45726582', 'Veronica', 'Gross', 'F', '04/01/2014', 'Ap #171-8522 Adipiscing Street', '(602) 770-1965', '014');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '45402041', 'Dora', 'Hays', 'F', '03/06/2010', '2792 Maecenas St.', '(784) 889-8354', '010');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '26853717', 'Katell', 'Shields', 'F', '14/09/2010', '6703 Luctus Ave', '(839) 718-5726', '001');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '20421404', 'Ria', 'Erickson', 'F', '04/09/2015', 'Ap #558-8363 Quis Avenue', '(225) 354-2062', '009');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '10428132', 'Alexa', 'Cross', 'F', '10/02/2013', 'Ap #754-5576 Vitae Avenue', '(808) 282-7195', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '76701451', 'Addison', 'Stone', 'F', '06/01/2010', 'Ap #345-7187 Morbi Street', '(364) 362-8258', '002');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '06749872', 'Gray', 'Mcintosh', 'M', '28/08/2014', 'Ap #301-2654 Lectus Rd.', '(183) 527-0849', '023');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '90191143', 'Eaton', 'Cervantes', 'M', '18/03/2012', 'P.O. Box 934, 945 Mi St.', '(988) 241-9110', '032');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '64269726', 'Melvin', 'Chandler', 'M', '26/06/2012', 'P.O. Box 532, 4884 Lobortis St.', '(326) 472-1705', '014');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '58036842', 'Rae', 'Reilly', 'M', '28/02/2011', 'P.O. Box 384, 6109 Nec Road', '(378) 532-4640', '007');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '39372017', 'Rose', 'Reed', 'F', '07/09/2013', 'Ap #280-8376 Est. St.', '(898) 891-0531', '028');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CC', '36216911', 'Zeus', 'Nguyen', 'M', '12/04/2015', 'P.O. Box 488, 5677 Eu Avenue', '(687) 676-4431', '010');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '43184814', 'Hadassah', 'Wright', 'M', '13/12/2011', '986-8003 Et Rd.', '(413) 750-5927', '028');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '13836643', 'Chantale', 'Key', 'M', '23/04/2012', '3585 A, St.', '(354) 264-0271', '028');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '38160068', 'Ursa', 'Howard', 'F', '23/12/2010', '790 Blandit. Rd.', '(719) 129-4142', '018');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '74676564', 'Wynter', 'Sheppard', 'M', '07/06/2015', 'P.O. Box 991, 1921 Magnis Avenue', '(222) 848-8945', '010');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '63372957', 'Moana', 'Snider', 'F', '26/09/2010', 'P.O. Box 632, 8225 Erat, St.', '(149) 855-6888', '016');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '12012479', 'Ciaran', 'Mendez', 'F', '25/01/2014', '467-7480 Ante Av.', '(121) 334-3289', '022');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('TI', '92122562', 'Mara', 'Nieves', 'F', '31/12/2013', '9470 Donec Av.', '(604) 706-4473', '029');
INSERT INTO PACIENTES(T_Identificacion, Identificacion, Nombres, Apellidos, Sexo, F_Nacimiento, Direccion, Telefonos, L_Residencia) VALUES('CE', '70838724', 'Kirby', 'Mccoy', 'M', '03/03/2012', '152-494 Semper Rd.', '(818) 212-1611', '020');

CREATE TABLE R_OT_EXAMEN (
    Numero TEXT NOT NULL PRIMARY KEY
  , Examen TEXT NOT NULL
  , UNIQUE(Numero)
);

INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1000', '719485007');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1001', '275734002');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1002', '416323006');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1003', '4231000179109');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1004', '7174001');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1005', '711184004');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1006', '128307000');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1007', '719485007');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1008', '275734002');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1009', '416323006');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1010', '4231000179109');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1011', '7174001');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1012', '711184004');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1013', '128307000');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1014', '719485007');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1015', '275734002');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1016', '416323006');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1017', '4231000179109');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1018', '7174001');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1019', '711184004');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1020', '128307000');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1021', '719485007');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1022', '275734002');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1023', '416323006');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1024', '4231000179109');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1025', '7174001');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1026', '711184004');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1027', '128307000');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1028', '711184004');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1029', '128307000');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1030', '719485007');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1031', '275734002');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1032', '416323006');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1033', '4231000179109');
INSERT INTO R_OT_EXAMEN(Numero, Examen) VALUES('1034', '7174001');

CREATE TABLE R_OT_RADIOLOGO (
    Numero TEXT NOT NULL PRIMARY KEY
  , Radiologo TEXT NOT NULL
  , UNIQUE(Numero)
);

INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1000', '7000');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1001', '7001');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1002', '7002');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1003', '7003');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1004', '7004');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1005', '7005');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1006', '7006');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1007', '7007');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1008', '7008');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1009', '7009');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1010', '7010');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1011', '7011');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1012', '7012');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1013', '7013');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1014', '7014');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1015', '7015');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1016', '7016');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1017', '7017');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1018', '7018');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1019', '7019');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1020', '7010');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1021', '7011');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1022', '7012');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1023', '7013');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1024', '7014');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1025', '7015');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1026', '7016');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1027', '7017');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1028', '7018');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1029', '7019');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1030', '7000');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1031', '7001');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1032', '7002');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1033', '7003');
INSERT INTO R_OT_RADIOLOGO(Numero, Radiologo) VALUES('1034', '7004');

CREATE TABLE RADIOLOGOS (
    Identificacion TEXT NOT NULL PRIMARY KEY
  , Nombres TEXT NOT NULL
  , Apellidos TEXT NOT NULL
  , R_Medico TEXT NOT NULL
  , UNIQUE(Identificacion)
);

INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7000', 'Dorothy', 'Taylor', '1279');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7001', 'Phelan', 'Newman', '2820');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7002', 'Steel', 'Gay', '1250');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7003', 'Cleo', 'Farrell', '1003');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7004', 'Dustin', 'Vang', '2793');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7005', 'Cailin', 'Murray', '1939');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7006', 'Jane', 'Gray', '2932');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7007', 'Carla', 'Buchanan', '1294');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7008', 'Jeanette', 'Foster', '1628');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7009', 'Remedios', 'Mcintyre', '2653');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7010', 'Audra', 'Joyce', '1830');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7011', 'Gillian', 'Vega', '2973');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7012', 'Kaye', 'Velazquez', '2715');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7013', 'Kai', 'Klein', '2859');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7014', 'India', 'Hunter', '2428');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7015', 'Susan', 'Charles', '2417');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7016', 'Neville', 'Thompson', '1723');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7017', 'Burton', 'Richards', '2321');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7018', 'Lucius', 'May', '2337');
INSERT INTO RADIOLOGOS(Identificacion, Nombres, Apellidos, R_Medico) VALUES('7019', 'Kirby', 'Le', '1237');

RELEASE dump;

COMMIT;

