# AbacatePay SDK - Lua

## Sobre

O **AbacatePay SDK** para Lua é uma biblioteca que facilita a integração com o sistema de pagamentos **AbacatePay**. Este SDK permite a criação e listagem de clientes, além da interação com os produtos e cobranças do sistema, por meio de uma API RESTful.

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

- **src/**: Contém os arquivos principais do SDK.
- **API/**: Lógica para interação com as rotas da API AbacatePay.
- **Config/**: Configuração básica para a conexão com a API.
- **Models/**: Modelos de dados como Cliente e Produto.
- **Utils/**: Funções utilitárias, como validações e helpers.

## Dependências

Este SDK depende das seguintes bibliotecas externas:

- `socket.http`: Para realizar requisições HTTP.
- `ltn12`: Para trabalhar com fluxo de dados.
- `dkjson` (opcional): Para decodificação de JSON (se necessário para processar respostas).

## Instalação

Para instalar o SDK:

```bash
git clone https://github.com/EricksonLOOP/abacatepay-sdk-lua.git
cd abacatepay-sdk-lua
```
instale as dependências:
<pre><code>
luarocks install luasocket
luarocks install dkjson   # Opcional, se usar JSON
</code></pre>

## Configuração
Para configurar o SDK, defina a URL base da API e a chave de API fornecida pela AbacatePay:
<pre>
<code>
local SDK = require("src.Init")
SDK.Config:set("https://api.abacatepay.com/", "sua_chave_de_api")
</code>
</pre>

## Criando um Novo Cliente
<pre>
<code>
local SDK= require("src.Init")
SDK.Config:set("https://api.abacatepay.com/", "sua_chave_de_api")

local req_body = "name=John Doe&cellphone=1234567890&email=john@example.com&taxId=123456789" -- AbacatePayClientRequest
local res = SDK.Client.createNewClient(req_body, SDK.Config:get())

print(res)

</code>
</pre>

## Listando Clientes
<pre>
<code>
local SDK= require("src.Init")
SDK.Config:set("https://api.abacatepay.com/", "sua_chave_de_api")

local res = SDK.Client.listClients(SDK.Config:get()) -- Array -> AbacatePayClientResponse

print(res)

</code>
</pre>
## Criando um Novo Billing
<pre>
<code>
local SDK= require("src.Init")
SDK.Config:set("https://api.abacatepay.com/", "sua_chave_de_api")
-- req_body = AbacatePayBillingRequest
local res = SDK.Billing.createNewBilling(req_body, SDK.Config:get())

print(res)

</code>
</pre>
## Listando Clientes
<pre>
<code>
local SDK= require("src.Init")
SDK.Config:set("https://api.abacatepay.com/", "sua_chave_de_api")

local res = SDK.Billing.listBilling(SDK.Config:get()) -- Array -> AbacatePayBillingResponse

print(res)

</code>
</pre>

## Contribuições
Se você deseja contribuir com o projeto, faça um fork deste repositório, crie uma branch, faça suas alterações e envie um pull request.