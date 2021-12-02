CREATE DATABASE WERAVE;

USE WERAVE;

CREATE TABLE DJ
(
	idDJ						INT PRIMARY KEY AUTO_INCREMENT,
    nomeDJ						VARCHAR(30),
    descricao 					VARCHAR(300)
);

INSERT INTO DJ (nomeDJ, descricao) VALUES
					('Charlotte De Witte', 'Charlotte de Witte é uma DJ e produtora musical belga, mais conhecida por sua marca "dark e despojada" de techno minimal e acid techno.Ela já havia se apresentado sob o pseudônimo Raving George. Ela é a fundadora da marca KNTXT.'),
					('Amelie Lens', 'Amelie Lens é um DJ belga de música eletrônica, produtor musical e proprietário da gravadora Lenske. Seu lançamento de estréia veio com a marca italiana Lyase, e logo após um trio de lançamentos no Segundo Estado da Pan-Pot.'),	
					('Tale Of Us', 'Tale of Us é uma produção musical italiana e uma dupla de DJs composta por Carmine Conte e Matteo Milleri. Eles estão sediados em Berlim, Alemanha.'),	
					('artbat', 'Batish e Artur, mais conhecidos como ARTBAT, começaram a produzir em um estúdio pequeno com o objetivo de levar a música ucraniana para o mundo, e esse desejo se tornou realidade em pouquíssimo tempo.'),	
					('Mathame', 'Mathame é o projeto de áudio dos italianos Amedeo e Matteo Giovanelli. O projeto começou em 2013, quando eles viviam em uma floresta situada nas encostas do vulcão mais ativo da Europa, o Monte Etna, onde ambos trabalharam e desenvolveram seu imaginário sonoro único.'),	
					('WhoMadeWho', 'é um trio pop experimental de Copenhague, formado em 2003. A banda consiste no guitarrista de jazz Jeppe Kjellberg, no baterista Tomas Barfod e no cantor / baixista Tomas Høffding.'),	
					('Boris Brejcha', 'Boris Brejcha é um DJ e produtor musical alemão. Ele auto-descreve o seu estilo musical como "high-tech minimal'),	
					('Hozho', 'Hozho é um DJ e produtor musical português. Os seus sons únicos, caracterizados por melodias harmoniosas no meio da escuridão, com mínimas influências do techno, levaram-no a criar o seu próprio género musical - Melodark.'),
					('Jamie Jones', 'Jamie Jones é um DJ galês, produtor e duas vezes vencedor do DJ Awards.'),	
					('Michael Bibi', 'Michael Bibi é DJ e produtor de Londres e uma vez vencedor do DJ Awards.'),	
					('Fisher', 'Paul Nicholas Fisher, conhecido pelo nome artístico Fisher, é um produtor musical australiano. Ele foi indicado ao prêmio ARIA 2018 de melhor lançamento de dança, bem como a categoria de melhor gravação de dança no 61º Grammy Awards anual por seu single solo "Losing It".'),	
					('Martin Garrix', 'Martijn Gerard Garritsen, mais conhecido pelo nome artístico de Martin Garrix, é um produtor, DJ e remixer neerlandês. Ele ficou conhecido especialmente pela sua música "Animals", que atingiu o topo de listas musicais em mais de dez países e conta com mais de 1 bilhão de visualizações no YouTube.'),	
					('Solomun', 'Mladen Solomun, mais conhecido pelo nome artístico de Solomun, é um DJ alemão-bósnio. Ele ganhou quatro prêmios DJs de Melhor Produtor, Melhor DJ e Melhor DJ de Melodic House.'),	
					('Nina Kraviz', 'Nina Kraviz é uma DJ, produtora musical e cantora russa.'),	
					('Skrillex', 'Sonny John Moore, mais conhecido como Skrillex, é um premiado produtor musical, cantor e compositor norte americano de música eletrônica. Foi um dos responsáveis por popularizar o Gênero Dubstep - Assim, ganhando 3 Grammy Awards em 2011.'),	
					('Borgore', 'Yosef Asaf Borger, conhecido profissionalmente como Borgore, é um produtor israelense de EDM, DJ, cantor e compositor e rapper. Ele é o fundador do selo Buygore Records.'),	
					('Neelix', 'Nascido em Hamburgo, na Alemanha, Henrik Twardzik aka Neelix é, atualmente, o maior nome do trance progressivo e um dos artistas mais requisitados da Europa, com disputadas turnês internacionais, inclusive, no Brasil'),	
					('Tiesto', 'Tiësto é o nome artístico do DJ, remixer e produtor musical holandês Tijs Michiel Verwest, nascido em Breda, em 17 de janeiro de 1969. Tiësto ganhou um Grammy em 2014. Ele tornou-se um dos nomes mais famosos, considerados e influentes na cena mundial de trance e música eletrônica.'),	
					('Alok', 'Alok Achkar Peres Petrillo é um DJ e produtor musical brasileiro, mais conhecido por seu sucesso mundial de 2016 "Hear Me Now". Em 2021, foi eleito o 4º melhor DJ do mundo pela revista britânica DJ Mag.');

CREATE TABLE usuario
(
	idUsuario					INT PRIMARY KEY AUTO_INCREMENT,
    nome						VARCHAR(45),
    sobrenome					VARCHAR(45),
    email						VARCHAR(50) UNIQUE,
    senha						VARCHAR(45),
    telefone					VARCHAR(18),
    cidade						VARCHAR(60),
    fkDJ						INT,
    FOREIGN KEY (fkDJ) REFERENCES DJ(idDJ)
) AUTO_INCREMENT = 100;

select * from dj;

