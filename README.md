# Desafio técnico KOPP exercício 2
Este projeto é um banco de dados com a tabela de Remessas e a tabela de Infrações interligadas de forma que cada remessa possui várias infrações e cada infração está em somente uma remessa
### Tecnologias 
* MySQL

### Segue queries para cada SELECT:

1)select * from infracao
where velocidade_medida >= (velocidade_permitida * 1.2)
order by data_infracao;

2)select remessa.id as numero_remessa, 
	remessa.situacao,
	count(case when infracao.valida = 1 then 1 end) as total_infracoes_validas,
    count(case when infracao.valida = 0 then 1 end) as total_infracoes_invalidas,
    remessa.total_infracoes
from infracao
inner join  remessa
on infracao.remessa_id = remessa.id
group by infracao.remessa_id, remessa.situacao
order by situacao;

