CREATE TABLE Cidades (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT null,
  populacao INTEGER
);

CREATE TABLE Alunos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT null,
  data_nasc TEXT,
  cidade_id INTEGER,
  
  FOREIGN KEY (cidade_id) REFERENCES Cidades(id)
);

INSERT INTO Cidades VALUES 
(1,	'Arraial dos Tucanos',	42632	),
(2,	'Springfield',			13820	),
(3,	'Hill Valley',			27383	),
(4,	'Coruscant',			19138	),
(5,	'Minas Tirith',			31394	);

INSERT INTO Alunos VALUES 
(1, 	'Imannuel Kant', 	'1724-04-22' , 4),
(2, 	'Alan Turing',	 	'1912-06-23' , 3),
(3, 	'George Boole', 	'2002-01-01' , 1),
(4, 	'Lynn Margulis', 	'1991-08-12' , 3),
(5, 	'Nicola Tesla', 	'2090-01-08' , null),
(6, 	'Ada Lovelace', 	'1978-05-28' , 4),
(7, 	'Claude Shannon', 	'1982-10-15' , 3),
(8, 	'Charles Darwin',	'2010-02-06' , null),
(9,		'Marie Curie', 		'2007-07-12' , 3),
(10,	'Carl Sagan', 		'2000-11-20' , 1),
(11,	'Tim Berners-Lee',  '1973-12-05' , 4),
(12,	'Imannuel Kant',	'1982-09-12' , 1);

SELECT * FROM Cidades;
SELECT * FROM Alunos;

SELECT * FROM Alunos INNER
JOIN Cidades
ON Cidades.id = Alunos.cidade_id;

