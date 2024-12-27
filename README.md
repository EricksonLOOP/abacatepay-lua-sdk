
    <h1>AbacatePay SDK - Lua</h1>
    
    <div class="section">
        <h2>Sobre</h2>
        <p>
            O <strong>AbacatePay SDK</strong> para Lua é uma biblioteca que facilita a integração com o sistema de pagamentos <strong>AbacatePay</strong>. Este SDK permite a criação e listagem de clientes, além da interação com os produtos e cobranças do sistema, por meio de uma API RESTful.
        </p>
    </div>

    <div class="section">
        <h2>Estrutura do Projeto</h2>
        <p>
            O projeto está organizado da seguinte forma:
        </p>
        <ul>
            <li><strong>src/</strong> - Contém os arquivos principais do SDK.</li>
            <li><strong>API/</strong> - Lógica para interação com as rotas da API AbacatePay.</li>
            <li><strong>Config/</strong> - Configuração básica para a conexão com a API.</li>
            <li><strong>Models/</strong> - Modelos de dados como Cliente e Produto.</li>
            <li><strong>Utils/</strong> - Funções utilitárias, como validações e helpers.</li>
        </ul>
    </div>

    <div class="section">
        <h2>Dependências</h2>
        <p>
            Este SDK depende das seguintes bibliotecas externas:
        </p>
        <ul>
            <li><code>socket.http</code>: Para realizar requisições HTTP.</li>
            <li><code>ltn12</code>: Para trabalhar com fluxo de dados.</li>
            <li><code>dkjson</code> (opcional): Para decodificação de JSON (se necessário para processar respostas).</li>
        </ul>
    </div>

    <div class="section">
        <h2>Instalação</h2>
        <p>Para instalar o SDK:</p>
        <pre><code>git clone https://github.com/seuusuario/abacatepay-sdk-lua.git
cd abacatepay-sdk-lua</code></pre>
        <p>Instale as dependências:</p>
        <pre><code>luarocks install luasocket
luarocks install dkjson   # Opcional, se usar JSON</code></pre>
    </div>

    <div class="section">
        <h2>Configuração</h2>
        <p>Para configurar o SDK, defina a URL base da API e a chave de API fornecida pela AbacatePay:</p>
        <pre><code>local config = require("Config")
config:set("https://api.abacatepay.com/", "sua_chave_de_api")</code></pre>
    </div>

    <div class="section">
        <h2>Uso</h2>
        <p>Para usar o SDK, veja os exemplos abaixo.</p>

        <h3>Criar um Novo Cliente</h3>
        <p>Para criar um novo cliente, use a função <code>createNewClient</code>. Você precisa passar os dados do cliente no formato <code>x-www-form-urlencoded</code>:</p>
        <pre><code>local config = require("Config")
local clientService = require("API.AbacatePayClientsService")

local req = "name=John Doe&cellphone=1234567890&email=john@example.com&taxId=123456789"
local response = clientService.createNewClient(req, config:get())

print(response)</code></pre>

        <h3>Listar Clientes</h3>
        <p>Para listar os clientes cadastrados, use a função <code>listClients</code>:</p>
        <pre><code>local response = clientService.listClients(config:get())
print(response)</code></pre>
    </div>

    <div class="section">
        <h2>Contribuições</h2>
        <p>Se você deseja contribuir com o projeto, faça um fork deste repositório, crie uma branch, faça suas alterações e envie um pull request.</p>
    </div>

    <div class="section">
        <h2>Licença</h2>
        <p>Este projeto é licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.</p>
    </div>

<