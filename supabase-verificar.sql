-- ETAPA A: SÓ CONSULTA. Não altera nada.
-- Rode no Supabase > SQL Editor para ver quais colunas a sua tabela tem hoje.
select column_name, data_type, column_default
from information_schema.columns
where table_schema = 'public' and table_name = 'shopping_items'
order by ordinal_position;

-- Resultado esperado (o app de produção usa estas colunas):
-- id, room_id, name, qty, checked, unit_price, sort_order, purchased_at, created_at
-- Se aparecerem todas, PARE AQUI. Não precisa rodar mais nada.


-- ETAPA B: SÓ SE FALTAR ALGUMA COLUNA.
-- Adiciona apenas o que não existe. Não apaga nem altera nenhum item da lista.
-- alter table public.shopping_items add column if not exists unit_price numeric(12,2);
-- alter table public.shopping_items add column if not exists sort_order bigint not null default 0;
-- alter table public.shopping_items add column if not exists purchased_at timestamptz;
