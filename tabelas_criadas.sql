create database if not exists hospital_db;
use hospital_db;

create table if not exists pacientes (
    id_paciente int auto_increment primary key,
    nome_paciente varchar(255) not null,
    cpf varchar(14) unique not null,
    data_nascimento date,
    telefone_paciente varchar(20),
    convenio varchar(50)
);

create table if not exists medicos (
    id_medico int auto_increment primary key,
    nome_medico varchar(255) not null,
    crm varchar(12) unique not null,
    especialidade varchar(100),
    valor_consulta decimal(10,2)
);

create table if not exists quartos (
    id_quarto int auto_increment primary key,
    numero_quarto int unique not null,
    andar int not null,
    tipo_quarto varchar(50),
    status_quarto varchar(50)
);

create table if not exists internacoes (
    id_internacao int auto_increment primary key,
    id_paciente int not null,
    id_quarto int not null,
    data_entrada date,
    data_saida date,
    valor_diaria decimal(10,2),
    foreign key (id_paciente) references pacientes(id_paciente),
    foreign key (id_quarto) references quartos(id_quarto)
);

create table if not exists consultas (
    id_consulta int auto_increment primary key,
    id_paciente int not null,
    id_medico int not null,
    data_consulta datetime,
    status_consulta varchar(30),
    valor_consulta decimal(10,2),
    foreign key (id_paciente) references pacientes(id_paciente),
    foreign key (id_medico) references medicos(id_medico)
);

create table if not exists prescricoes (
    id_prescricao int auto_increment primary key,
    id_consulta int not null,
    medicamento varchar(300),
    dosagem varchar(100),
    quantidade int,
    foreign key (id_consulta) references consultas(id_consulta)
);

