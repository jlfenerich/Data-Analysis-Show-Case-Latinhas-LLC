
-- Quantidade Produzida por Tipo de Cerveja
SELECT 
    p.tipo_cerveja, 
    SUM(p.quantidade_produzida) AS total_produzido
FROM
    producao p
GROUP BY
    p.tipo_cerveja
    
-- Custo de Produção por Tipo de Cerveja
select 
	p.tipo_cerveja,
	sum(p.custo_producao) as total_custo
from
	producao p 
group by
	p.tipo_cerveja

-- Devolução por Tipo de Cerveja
select
    p.tipo_cerveja,
    COUNT(d.id_devolucao) AS numero_devolucoes,
    SUM(d.quantidade_devolvida) AS total_devolvido
FROM
    producao p
JOIN
    vendas v ON p.id_lote = v.id_lote
JOIN
    devolucoes d ON v.id_venda = d.id_venda
GROUP BY
    p.tipo_cerveja;
   
-- Vendas por Tipo de Cerveja
SELECT 
    p.tipo_cerveja,
    SUM(v.quantidade_vendida) AS total_vendido,
    SUM(v.quantidade_vendida * v.preco_venda) AS valor_vendas,
    SUM(p.custo_producao) AS custo_producao_total,
    SUM(v.quantidade_vendida * v.preco_venda) - SUM(p.custo_producao) AS lucro
FROM
    producao p
JOIN
    vendas v ON p.id_lote = v.id_lote
GROUP BY
    p.tipo_cerveja;

	