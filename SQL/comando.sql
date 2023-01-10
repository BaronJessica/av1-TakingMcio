CREATE TABLE public.pessoa (
	pessoa_id serial4 NOT NULL,
	nome varchar(200) NOT NULL,
	cpf varchar(25) NOT NULL,
	idade date NULL,
	sexo bpchar(1) NOT NULL,
	CONSTRAINT pessoa_pkey PRIMARY KEY (pessoa_id)
);

CREATE TABLE public.endereço (
	endereco_id serial4 NOT NULL,
	tipo varchar(10) NOT NULL,
	logradouro varchar(250) NOT NULL,
	numero varchar(10) NOT NULL,
	complemento varchar(100) NULL,
	cep numeric NOT NULL,
	cidade varchar(250) NOT NULL,
	estado bpchar(2) NOT NULL,
	"Pessoa_id" int4 NOT NULL,
	CONSTRAINT endereço_pkey PRIMARY KEY (endereco_id)
);

ALTER TABLE public.endereço ADD CONSTRAINT endereço_fk FOREIGN KEY ("Pessoa_id") REFERENCES pessoa(pessoa_id);


SELECT p.pessoa_id, p.nome, p.cpf, p.idade, p.sexo, e.tipo , e.logradouro , e.numero , e.complemento , e.cep , e.cidade , e.estado 
FROM public.pessoa p
inner join public.endereço e 
on p.pessoa_id = e."Pessoa_id"