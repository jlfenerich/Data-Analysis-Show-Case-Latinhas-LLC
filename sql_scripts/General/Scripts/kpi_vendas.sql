-- Vendas por Canal
select 
	canal_venda,
	sum(v.quantidade_vendida)as qtdd_vendida
from
	vendas v
group by
	canal_venda
order by
	qtdd_vendida

-- Vendas por Tipo
select
	p.tipo_cerveja
from
