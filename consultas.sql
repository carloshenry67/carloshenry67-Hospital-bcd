use hospital_db;

-- 1. listar todos os pacientes cadastrados

select *
from pacientes;


-- 2. listar todos os médicos cadastrados

select *
from medicos;


-- 3. listar todos os quartos cadastrados

select *
from quartos;


-- 4. relatório completo de pacientes e prescrições médicas

select
    p.nome_paciente,
    m.nome_medico,
    c.data_consulta,
    pr.medicamento,
    pr.quantidade
from pacientes p
inner join consultas c on p.id_paciente = c.id_paciente
inner join medicos m on c.id_medico = m.id_medico
inner join prescricoes pr on c.id_consulta = pr.id_consulta;


-- 5. histórico de internações dos pacientes

select
    p.nome_paciente,
    q.numero_quarto,
    q.andar,
    i.data_entrada,
    i.valor_diaria
from internacoes i
inner join pacientes p on i.id_paciente = p.id_paciente
inner join quartos q on i.id_quarto = q.id_quarto;


-- 6. listar pacientes, convênios e médicos que os atenderam

select
    p.nome_paciente,
    p.convenio,
    m.nome_medico,
    m.especialidade
from pacientes p
left join consultas c on p.id_paciente = c.id_paciente
left join medicos m on c.id_medico = m.id_medico;


-- 7. listar prescrições e médicos responsáveis

select
    m.nome_medico,
    m.especialidade,
    p.nome_paciente,
    pr.medicamento
from prescricoes pr
inner join consultas c on pr.id_consulta = c.id_consulta
inner join medicos m on c.id_medico = m.id_medico
inner join pacientes p on c.id_paciente = p.id_paciente;


-- 8. listar pacientes que foram internados e também realizaram consultas

select distinct
    p.nome_paciente,
    q.numero_quarto,
    m.nome_medico,
    c.data_consulta
from pacientes p
inner join internacoes i on p.id_paciente = i.id_paciente
inner join quartos q on i.id_quarto = q.id_quarto
inner join consultas c on p.id_paciente = c.id_paciente
inner join medicos m on c.id_medico = m.id_medico;



-- 9. listar todas as consultas das mais recentes para as mais antigas

select
    p.nome_paciente,
    m.nome_medico,
    c.data_consulta
from consultas c
inner join pacientes p on c.id_paciente = p.id_paciente
inner join medicos m on c.id_medico = m.id_medico
order by c.data_consulta desc;


-- 10. listar internações ordenadas pelo valor da diária

select
    p.nome_paciente,
    q.numero_quarto,
    i.valor_diaria
from internacoes i
inner join pacientes p on i.id_paciente = p.id_paciente
inner join quartos q on i.id_quarto = q.id_quarto
order by i.valor_diaria asc;


-- 11. calcular o valor médio das consultas médicas

select
    avg(valor_consulta) as media_consultas
from consultas;


-- 12. calcular o valor total arrecadado com consultas

select
    sum(valor_consulta) as total_arrecadado
from consultas;


-- 13. identificar consultas de pacientes com sobrenome Silva

select
    p.nome_paciente,
    m.nome_medico,
    c.data_consulta
from consultas c
inner join pacientes p on c.id_paciente = p.id_paciente
inner join medicos m on c.id_medico = m.id_medico
where p.nome_paciente like '%Silva%'
and c.status_consulta = 'Realizada';


-- 14. listar consultas realizadas por médicos da área de Cardiologia

select
    p.nome_paciente,
    m.nome_medico,
    m.especialidade
from consultas c
inner join pacientes p on c.id_paciente = p.id_paciente
inner join medicos m on c.id_medico = m.id_medico
where m.especialidade like '%Cardio%';


-- 15. listar internações do primeiro semestre de 2026

select
    p.nome_paciente,
    q.numero_quarto,
    i.data_entrada
from internacoes i
inner join pacientes p on i.id_paciente = p.id_paciente
inner join quartos q on i.id_quarto = q.id_quarto
where i.data_entrada between '2026-01-01' and '2026-06-30';