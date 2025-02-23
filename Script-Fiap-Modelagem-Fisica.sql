CREATE TABLE Clientes(
	id_cliente INT PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR(100)
)

SELECT * FROM Clientes

CREATE TABLE Pedidos(
	id_pedido INT PRIMARY KEY,
	id_cliente INT,
	data_pedido DATE,
	FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente)
);

SELECT * FROM Pedidos

CREATE TABLE Produtos(
	id_produto INT PRIMARY KEY,
	nome_produto VARCHAR(100),
	descricao_produto VARCHAR(100),
	preco DECIMAL(10,2)
)

SELECT * FROM Produtos

CREATE TABLE Detalhes_Pedido(
	id_detalhes_pedido INT PRIMARY KEY,
	id_pedido INT,
	id_produto INT,	
	quantidade INT,
	FOREIGN KEY(id_pedido) REFERENCES Pedidos(id_pedido),
	FOREIGN KEY(id_produto) REFERENCES Produtos(id_produto)
)

SELECT * FROM Detalhes_Pedido


