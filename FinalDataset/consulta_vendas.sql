SELECT 
    v.venda_id,
    v.data_venda,
    v.metodo_pagamento,
    v.quantidade,

    c.cliente_id,
    c.nome AS nome_cliente,
    c.email,
    c.pais,
    c.data_registo,

    p.produto_id,
    p.nome_produto,
    p.categoria,
    p.preco_unitario,
    p.stock

FROM vendas v
LEFT JOIN clientes c ON v.cliente_id = c.cliente_id
LEFT JOIN produtos p ON v.produto_id = p.produto_id;