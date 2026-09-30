# Lista de Compras: virar app (PWA) sem perder nada

A ideia aqui é simples: o seu `index.html` que já está no ar continua sendo o mesmo. Só vamos **adicionar** arquivos novos ao repositório e **colar dois blocos** dentro dele. Nenhuma linha do que já funciona é apagada.

## O que tem nesta pasta

| Arquivo | Para que serve | Vai para o GitHub? |
|---|---|---|
| `manifest.json` | Nome, cor e ícone do app | Sim, na raiz |
| `sw.js` | Faz o site virar app instalável e abrir rápido | Sim, na raiz |
| `vercel.json` | Garante que o celular sempre pegue a versão nova do `sw.js` | Sim, na raiz |
| `icons/` (5 imagens) | Ícone da tela inicial | Sim, a pasta inteira |
| `BLOCO-1-colar-no-head.html` | Trecho para colar no seu `index.html` | Não, é só para copiar |
| `BLOCO-2-colar-antes-do-body.html` | Trecho para colar no seu `index.html` | Não, é só para copiar |
| `index-exemplo-com-pwa.html` | Exemplo de como fica o arquivo final, para conferir | Não |
| `supabase-verificar.sql` | Confere se o banco está como o app espera | Não |

Se o repositório já tiver um `vercel.json`, me avise antes de subir o meu, para juntarmos os dois.

## Passo 1: criar uma branch (igual fizemos antes)

1. Abra `github.com/Inonaka/lista-da-feira`.
2. Clique no botão com o nome da branch (`main`), digite `feature/pwa` e clique em **Create branch: feature/pwa from main**.
3. Confira que o botão agora mostra `feature/pwa`. Tudo daqui em diante é feito nessa branch.

## Passo 2: subir os arquivos novos

1. Clique em **Add file > Upload files**.
2. Arraste `manifest.json`, `sw.js`, `vercel.json` **e a pasta `icons` inteira** (arraste a pasta, não as imagens soltas).
3. Embaixo, em "Commit changes", escreva `feat: arquivos do PWA` e confirme que está marcado para commitar na `feature/pwa`.
4. Clique em **Commit changes**.

## Passo 3: colar os dois blocos no seu index.html

1. Clique no `index.html` do repositório e depois no ícone de lápis (Edit).
2. Use Ctrl+F (ou Cmd+F) e procure por `</head>`.
3. Coloque o cursor **logo antes** de `</head>` e cole todo o conteúdo do `BLOCO-1-colar-no-head.html`.
4. Procure por `</body>`, coloque o cursor **logo antes** e cole todo o conteúdo do `BLOCO-2-colar-antes-do-body.html`.
5. Clique em **Commit changes**, mensagem `feat: transformar em PWA`, na `feature/pwa`.

Não mexa em mais nada no arquivo. As suas chaves do Supabase continuam onde estão.

## Passo 4: testar no Preview do Vercel

1. Em alguns segundos o Vercel cria um **Preview** da branch. Você acha o link no Vercel (projeto `lista-da-feira` > Deployments) ou no próprio GitHub, no commit.
2. Abra o link do Preview no computador e confira que a lista aparece normal, com os itens de sempre.
3. Adicione um item de teste, marque, coloque preço, remova. Tudo deve funcionar como antes.

Observação: no iPhone, instale só a versão de **produção**, não o Preview. O link do Preview muda e o app instalado ficaria preso a ele.

## Passo 5: Pull Request e merge

1. No GitHub, aparece um aviso amarelo "feature/pwa had recent pushes". Clique em **Compare & pull request**.
2. Título: `feat: transformar em PWA`. Clique em **Create pull request**.
3. Espere os checks ficarem verdes e clique em **Merge pull request > Confirm merge**.
4. O Vercel publica em produção sozinho.

## Passo 6: instalar no iPhone (e no celular da sua esposa)

1. Abra o link de **produção** no **Safari** (tem que ser o Safari).
2. Toque no botão de compartilhar (quadrado com seta para cima).
3. Role e toque em **Adicionar à Tela de Início**. O nome sugerido é "Compras"; pode mudar se quiser.
4. Toque em **Adicionar**. Pronto, o ícone verde aparece na tela.

Se vocês usam uma lista diferente de `familia` (pelo link com `?lista=...`), abra o link com esse final no Safari antes de adicionar à tela de início.

Se já existia um atalho antigo do site na tela de início, apague o antigo e adicione de novo depois do merge.

## O que muda na prática

- Abre em tela cheia, sem a barra do Safari, como um app.
- Ícone próprio na tela inicial.
- Abre mais rápido, porque a "casca" do app fica guardada no celular.
- Quando você volta para o app depois de um tempo em outra tela, a lista se atualiza sozinha. No iPhone a conexão em tempo real costuma cair em segundo plano; isso resolve.
- Os itens da lista **não** ficam guardados no celular. Continuam vindo do Supabase, ao vivo. Sem internet, o app abre, mas não carrega a lista.

## Atualizações futuras

Quando mudar algo no app, o celular pega a versão nova na próxima vez que abrir com internet. Se alguma vez parecer que não atualizou, feche o app (deslize para cima) e abra de novo.
