use bd_FincancasUPXII;

insert into Categoria values
	('GastosFixos', 'icon01', 'red'),
    ('GastosEventuais', 'icon02', 'blue'),
    ('GastosDiarios', 'icon03', 'green'),
    ('Entradas', 'icon04', 'yellow');
    
insert into Subcategoria values
	('Moradia', 'icon11', 'red', 'GastosFixos'),
    ('Alimentacao', 'icon12', 'green', 'GastosDiarios'),
    ('Mercado', 'icon13', 'green', 'GastosDiarios'),
    ('Estudos', 'icon14', 'red', 'GastosFixos'),
    ('Lazer', 'icon15', 'green', 'GastosDiarios'),
    ('Pets', 'icon16', 'blue', 'GastosEventuais'),
    ('Saúde', 'icon17', 'green', 'GastosEventuais'),
    ('Combustivel', 'icon18', 'blue', 'GastosEventuais'),
    ('Compras', 'icon19', 'green', 'GastosEventuais'),
    ('Salario', 'icon20', 'yellow', 'Entradas'),
    ('Estorno', 'icon21', 'yellow', 'Entradas'),
	('Rendimento', 'icon22', 'yellow', 'Entradas');
    
insert into Conta values
	(1, 'Nubank', 'Corrente', 5264),
    (2, 'Itau', 'Corrente', 1254),
    (3, 'Caixa', 'Poupanca', 16772),
    (4, 'Carteira', 'Dinheiro', 1350);
    
insert into Movimentacao values
	(1, '2023-04-05', 'despesa', 'Lanche', 20, 'debito', 'Padaria', null, 1, 'Alimentacao'),
    (2, '2023-04-05', 'despesa', 'Aluguel', 750, 'credito', null, 'pago para imobiliaria', 1, 'Moradia'),
    (3, '2023-04-06', 'receita', 'Salário', 3500, 'debito', null, null, 1, 'Salario'),
    (4, '2023-04-06', 'despesa', 'ContaLuz', 150, 'debito', null, null, 1, 'Moradia'),
    (5, '2023-04-06', 'despesa', 'ContaAgua', 69, 'debito', 'Loterica', null, 1, 'Moradia'),
    (6, '2023-04-07', 'receita', 'Rendimento', 6.02, 'debito', null, null, 3, 'Rendimento'),
    (7, '2023-04-07', 'despesa', 'Mercado', 367, 'credito', 'Carrefour', null, 1, 'Mercado'),
    (8, '2023-04-08', 'despesa', 'Cinema', 37, 'dinheiro', null, null, 4, 'Lazer'),
    (9, '2023-04-08', 'despesa', 'Gasolina', 250, 'debito', 'Posto Shell', 'pedir reembolso', 1, 'Combustivel'),
    (10, '2023-04-08', 'despesa', 'Vestido', 84, 'debito', 'Riachuelo', null, 1, 'Compras'),
    (11, '2023-04-08', 'receita', 'Devolucao vestido', 84, 'debito', 'Riachuelo', 'ficou apertado', 1, 'Estorno'),
    (12, '2023-04-12', 'despesa', 'Twitch Prime', 14.99, 'credito', 'Amazon', null, 1, 'Lazer'),
	(13, '2023-04-12', 'despesa', 'Livro', 280, 'debito', 'Saraiva', null, 2, 'Estudos'),
    (14, '2023-04-12', 'despesa', 'Troca dos pneus', 1340.99, 'debito', 'Pneu Store', null, 3, 'Compras'),
    (15, '2023-05-07', 'receita', 'Salario', 3500, 'debito', null, null, 1, 'Salario'),
    (16, '2023-05-13', 'despesa', 'Coleira', 25.50, 'dinheiro', null, null, 4, 'Pets'),
    (17, '2023-05-13', 'despesa', 'Jogos', 300, 'credito', 'Steam', null, 2, 'Lazer'),
    (18, '2023-05-14', 'despesa', 'Lanche', 50, 'credito', 'McDonalds', null, 1, 'Aliementacao'),
	(19, '2023-05-15', 'despesa', 'Remedio', 22.90, 'dinheiro', 'Droga Raia', null, 4, 'Saúde'),
	(20, '2023-05-15', 'receita', 'Rendimento', 500, 'debito', null, 'CDI Nubank', 2, 'Rendimento'),
	(21, '2023-05-20', 'despesa', 'Roupas', 40, 'credito', 'Aliexprees', null, 2, 'Compras'),
    (22, '2023-05-20', 'despesa', 'Acessorios', 40, 'credito', 'Shopee', null, 2, 'Compras'),
    (23, '2023-05-21', 'despesa', 'Jantar', 100, 'debito', null, null, 1, 'Alimentacao'),
	(24, '2023-05-21', 'despesa', 'Cinema', 50, 'dinheiro', null, null, 4, 'Lazer'),
	(25, '2023-05-22', 'despesa', 'Mercado', 200, 'credito', 'Supermercado Extra', null, 1, 'Mercado'),
	(26, '2023-05-22', 'receita', 'Salario', 800, 'debito', null, null, 2, 'Salario'),
	(27, '2023-05-23', 'despesa', 'Café da manhã', 30, 'debito', 'Cafeteria', null, 1, 'Alimentacao'),
	(28, '2023-05-23', 'despesa', 'Uber', 20, 'debito', null, null, 1, 'Lazer'),
	(29, '2023-05-24', 'despesa', 'Academia', 80, 'credito', null, null, 1, 'Saúde'),
	(30, '2023-05-24', 'despesa', 'Livros', 60, 'debito', 'Livraria Curitiba', null, 2, 'Estudos'),
    (31, '2023-05-25', 'despesa', 'Lanche', 15, 'debito', 'Cafeteria', null, 1, 'Alimentacao'),
	(32, '2023-05-25', 'receita', 'Rendimento', 200, 'debito', null, null, 3, 'Rendimento'),
	(33, '2023-05-26', 'despesa', 'Corte de cabelo', 50, 'debito', null, null, 1, 'Saúde'),
	(34, '2023-05-26', 'despesa', 'Medicamentos', 100, 'debito', null, 'gripe', 1, 'Saúde'),
	(35, '2023-05-27', 'despesa', 'Netflix', 30, 'credito', null, null, 2, 'Entretenimento'),
	(36, '2023-05-27', 'despesa', 'Almoço', 70, 'debito', null, null, 1, 'Alimentacao'),
	(37, '2023-05-28', 'receita', 'Rendimento', 500, 'credito', null, null, 2, 'Rendimento'),
	(38, '2023-05-28', 'despesa', 'Celular novo', 2000, 'debito', 'Loja de Eletrônicos', null, 2, 'Compras'),
	(39, '2023-05-29', 'despesa', 'Café', 20, 'debito', 'Cafeteria', null, 1, 'Alimentacao'),
	(40, '2023-05-29', 'despesa', 'Spotify', 50, 'credito', null, null, 2, 'Entretenimento'),
    (41, '2023-05-02', 'despesa', 'Sorvete', 12, 'debito', null, null, 1, 'Alimentacao'),
    (42, '2023-05-13', 'despesa', 'Pizza', 125, 'debito', null, null, 2, 'Alimentacao'),
	(43, '2023-05-27', 'receita', 'Reembolso pizza', 105, 'debito', null, null, 2, 'Estorno'),
    (44, '2023-05-02', 'despesa', 'Lanche', 20, 'dinheiro', null, null, 4, 'Alimentacao'),
    (45, '2023-05-04', 'despesa', 'Entrada show', 8, 'dinheiro', null, null, 4, 'Lazer'),
    (46, '2023-05-04', 'despesa', 'cerveja', 35, 'dinheiro', null, null, 4, 'Lazer'),
    (47, '2023-05-09', 'despesa', 'Mercado', 96.35, 'dinheiro', null, null, 4, 'Mercado'),
    (48, '2023-05-12', 'despesa', 'Casquinha', 4.5, 'dinheiro', 'MC Donalds', null, 4, 'Alimentacao'),
    (49, '2023-05-23', 'despesa', 'Pizza', 28, 'dinheiro', null, null, 4, 'Alimentacao'),
    (50, '2023-05-19', 'despesa', 'Quitanda', 67.25, 'dinheiro', null, null, 4, 'Mercado'),
    (51, '2023-05-12', 'despesa', 'Almoço', 46, 'dinheiro', null, null, 4, 'Alimentacao'),
    (52, '2023-05-20', 'despesa', 'Janta', 20, 'dinheiro', null, null, 4, 'Alimentacao'),
    (53, '2023-05-21', 'despesa', 'Almoço', 35.50, 'dinheiro', null, null, 4, 'Alimentacao'),
    (54, '2023-05-30', 'despesa', 'Mercado', 87.63, 'dinheiro', null, null, 4, 'Mercado'),
    (55, '2023-05-26', 'despesa', 'Jogo futebol', 20, 'dinheiro', null, null, 4, 'Lazer');
    

select * from Movimentacao;
    
