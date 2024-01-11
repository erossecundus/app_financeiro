-- RELATORIO 01 - Todas as despesas no mês de maio/2023 (RETORNANDO: Data_Movim, Descr_Movim, Valor_Movim)
use bd_FincancasUPXII;
select Data_Movim, Descr_Movim, Valor_Movim
from Movimentacao
where (Data_Movim between '2023-05-01' and '2023-05-31') and (Tipo_Movim = 'despesa')
order by Data_Movim asc;


-- RELATORIO 02 - Todas as despesas no crédito do mês de maio/2023 nas contas Itaú e Nubank (RETORNANDO: Data_Movim, Descr_Movim, Valor_Movim, Banco_Conta) 
use bd_FincancasUPXII;
select mov.Data_Movim, mov.Descr_Movim, mov.Valor_Movim, co.Banco_Conta
from Movimentacao as mov
inner join Conta as co
on mov.ID_Conta = co.ID_Conta
where (mov.Data_Movim between '2023-05-01' and '2023-05-31') and (mov.FormaPgto_Movim = 'credito') and (co.ID_Conta in (1, 2)) and (mov.Tipo_Movim = 'despesa')
order by mov.Data_Movim asc;


-- RELATORIO 03 - Total de receitas e despesas no mês de abril em todas as contas
use bd_FincancasUPXII;
select Tipo_Movim, sum(Valor_Movim) as Total_Abril
from Movimentacao
where (Data_Movim between '2023-04-01' and '2023-04-30')
group by Tipo_Movim;


-- RELATORIO 04 - Todos as despesas com Gastos Diários no mês de maio/2023 em dinheiro (RETORNANDO: mov.Data_Movim, mov.Descr_Movim, mov.Valor_Movim)
use bd_FincancasUPXII;
select mov.Data_Movim, mov.Descr_Movim, mov.Valor_Movim
from Movimentacao as mov
inner join Conta as co
on mov.ID_Conta = co.ID_Conta
inner join Subcategoria as sub
on mov.Nome_Subcateg = sub.Nome_Subcateg
inner join Categoria as cat
on sub.Nome_Categ = cat.Nome_Categ
where (mov.Data_Movim between '2023-05-01' and '2023-05-31') and (co.ID_Conta = 4) and (cat.Nome_Categ = 'GastosDiarios')
order by mov.Data_Movim asc;




