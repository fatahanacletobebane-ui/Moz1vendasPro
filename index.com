<!DOCTYPE html>
<html lang="pt-MZ">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#16a34a">
<title>MOZ1VENDAS PRO | Marketplace Digital</title>
<style>
:root{--green:#16a34a;--green2:#15803d;--dark:#0f172a;--muted:#64748b;--bg:#f5f7f6;--white:#fff;--line:#e2e8f0;--danger:#dc2626;--blue:#2563eb;--shadow:0 12px 35px rgba(15,23,42,.08)}
*{box-sizing:border-box}html{scroll-behavior:smooth}body{margin:0;background:var(--bg);color:var(--dark);font-family:Inter,Segoe UI,Roboto,Arial,sans-serif}.hidden{display:none!important}.container{width:min(1180px,calc(100% - 28px));margin:auto}
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);backdrop-filter:blur(12px);border-bottom:1px solid var(--line)}.nav{height:68px;display:flex;align-items:center;gap:18px}.brand{font-weight:900;font-size:20px;color:var(--green);white-space:nowrap}.brand span{color:var(--dark)}.search{flex:1;position:relative}.search input{width:100%;height:42px;border:1px solid var(--line);border-radius:12px;padding:0 14px 0 40px;font-size:14px;outline:none;background:#f8fafc}.search input:focus{border-color:#86efac;background:#fff}.search-icon{position:absolute;left:14px;top:12px;color:#94a3b8}.nav-actions{display:flex;gap:8px}.btn{border:0;border-radius:10px;padding:10px 15px;font-weight:700;cursor:pointer;transition:.18s;font-size:14px}.btn-primary{background:var(--green);color:#fff}.btn-primary:hover{background:var(--green2)}.btn-light{background:#f1f5f9;color:var(--dark)}.btn-light:hover{background:#e2e8f0}.btn-danger{background:#fee2e2;color:#991b1b}.btn:disabled{opacity:.55;cursor:not-allowed}
.hero{margin:24px 0 22px;background:linear-gradient(135deg,#052e16,#166534);border-radius:24px;padding:42px;color:#fff;overflow:hidden;position:relative}.hero:after{content:"";position:absolute;width:280px;height:280px;border-radius:50%;right:-90px;top:-120px;background:rgba(255,255,255,.08)}.hero h1{font-size:clamp(30px,5vw,50px);line-height:1.02;margin:0 0 12px;max-width:680px}.hero p{margin:0 0 22px;color:#dcfce7;max-width:650px;font-size:16px;line-height:1.6}.hero-actions{display:flex;gap:10px;flex-wrap:wrap}.hero .btn-light{background:#fff;color:#166534}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:15px;margin:30px 0 15px}.section-head h2{margin:0;font-size:25px}.section-head p{margin:4px 0 0;color:var(--muted);font-size:13px}.status{font-size:13px;color:var(--muted)}.grid{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:18px}.product{background:#fff;border:1px solid var(--line);border-radius:17px;overflow:hidden;box-shadow:var(--shadow);transition:transform .18s,box-shadow .18s}.product:hover{transform:translateY(-3px);box-shadow:0 16px 40px rgba(15,23,42,.12)}.product-img{height:190px;width:100%;object-fit:cover;background:#e2e8f0}.product-body{padding:15px}.product-title{font-weight:800;font-size:16px;line-height:1.25;margin-bottom:10px}.price{font-weight:900;color:var(--green);font-size:20px}.views{color:#94a3b8;font-size:12px;margin:5px 0 13px}.product .btn{width:100%}.empty{background:#fff;border:1px dashed #cbd5e1;border-radius:16px;padding:40px;text-align:center;color:var(--muted)}
.loading{display:flex;align-items:center;justify-content:center;padding:45px;color:var(--muted)}.spinner{width:22px;height:22px;border:3px solid #d1fae5;border-top-color:var(--green);border-radius:50%;animation:spin .8s linear infinite;margin-right:10px}@keyframes spin{to{transform:rotate(360deg)}}
.modal{position:fixed;inset:0;background:rgba(15,23,42,.58);z-index:100;display:flex;align-items:center;justify-content:center;padding:16px}.modal-card{background:#fff;width:min(520px,100%);max-height:92vh;overflow:auto;border-radius:20px;padding:24px;box-shadow:0 25px 70px rgba(0,0,0,.2);position:relative}.close{position:absolute;right:15px;top:13px;border:0;background:#f1f5f9;width:34px;height:34px;border-radius:50%;cursor:pointer;font-size:20px}.tabs{display:flex;gap:6px;background:#f1f5f9;padding:5px;border-radius:11px;margin:15px 0}.tab{flex:1;border:0;background:transparent;padding:10px;border-radius:8px;font-weight:700;cursor:pointer}.tab.active{background:#fff;box-shadow:0 2px 8px rgba(0,0,0,.06);color:var(--green)}.form-group{margin:13px 0}.form-group label{display:block;font-size:13px;font-weight:700;margin-bottom:6px}.form-group input,.form-group select{width:100%;height:44px;border:1px solid #cbd5e1;border-radius:10px;padding:0 12px;font-size:14px;outline:none}.form-group input:focus,.form-group select:focus{border-color:#4ade80}.help{font-size:12px;color:var(--muted);line-height:1.5}.wa{display:block;margin-top:10px;text-align:center;background:#25d366;color:#fff;text-decoration:none;border-radius:10px;padding:11px;font-weight:800}
.product-detail{display:grid;grid-template-columns:1fr 1fr;gap:24px}.detail-img{width:100%;height:360px;object-fit:cover;border-radius:16px;background:#e2e8f0}.detail h2{font-size:30px;margin:0 0 10px}.detail-desc{color:#64748b;line-height:1.7}.breakdown{background:#f0fdf4;border-left:4px solid var(--green);padding:14px;border-radius:0 10px 10px 0;margin:18px 0}.breakdown p{margin:5px 0;font-size:13px;color:#475569}.total{font-size:25px;font-weight:900;color:var(--green);margin-top:8px}.dashboard{display:grid;grid-template-columns:1fr 1fr;gap:15px}.dash{background:#fff;border:1px solid var(--line);border-radius:15px;padding:20px}.dash h3{margin:0 0 6px;font-size:13px;color:var(--muted)}.dash strong{font-size:28px;color:var(--green)}
footer{margin-top:50px;background:#0f172a;color:#cbd5e1;padding:30px 0}.footer-inner{display:flex;justify-content:space-between;gap:20px;flex-wrap:wrap;font-size:13px}.toast{position:fixed;bottom:20px;right:20px;z-index:200;background:#0f172a;color:#fff;padding:13px 16px;border-radius:12px;box-shadow:var(--shadow);max-width:360px;font-size:13px}.error{color:var(--danger);font-size:13px;margin-top:8px}
@media(max-width:900px){.grid{grid-template-columns:repeat(3,minmax(0,1fr))}.product-detail{grid-template-columns:1fr}}
@media(max-width:650px){.nav{height:auto;padding:11px 0;flex-wrap:wrap}.brand{font-size:18px}.search{order:3;flex-basis:100%}.nav-actions{margin-left:auto}.nav-actions .btn{padding:9px 11px}.hero{padding:28px 22px;border-radius:18px}.grid{grid-template-columns:repeat(2,minmax(0,1fr));gap:12px}.product-img{height:145px}.product-body{padding:12px}.price{font-size:17px}.product-title{font-size:14px}.detail-img{height:260px}.dashboard{grid-template-columns:1fr}.modal-card{padding:20px}}
@media(max-width:390px){.grid{grid-template-columns:1fr}.product-img{height:190px}}
</style>
</head>
<body>
<header>
  <div class="container nav">
    <a href="./" class="brand">MOZ1<span>VENDAS</span></a>
    <div class="search"><span class="search-icon">⌕</span><input id="search" type="search" placeholder="Pesquisar produtos..." oninput="filtrarProdutos()"></div>
    <div class="nav-actions">
      <button class="btn btn-light" onclick="abrirConta()">Minha Conta</button>
    </div>
  </div>
</header>

<main class="container">
  <section id="home-view">
    <div class="hero">
      <h1>Compre e venda produtos digitais em Moçambique.</h1>
      <p>Encontre produtos aprovados no MOZ1VENDAS PRO, compre de forma simples e tenha acesso ao seu produto depois da confirmação do pagamento.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" onclick="document.getElementById('vitrine').scrollIntoView({behavior:'smooth'})">Explorar produtos</button>
        <button class="btn btn-light" onclick="abrirConta('registo')">Criar conta</button>
      </div>
    </div>

    <div class="section-head" id="vitrine">
      <div><h2>Vitrine</h2><p>Produtos aprovados e disponíveis para compra.</p></div>
      <div class="status" id="vitrine-status">A carregar...</div>
    </div>
    <div id="products-loading" class="loading"><span class="spinner"></span> A carregar produtos...</div>
    <div id="products-grid" class="grid"></div>
    <div id="products-empty" class="empty hidden">Nenhum produto aprovado foi encontrado.</div>

    <section id="dashboard-section" class="hidden">
      <div class="section-head"><div><h2>Minha conta</h2><p>Resumo dos seus ganhos no marketplace.</p></div></div>
      <div class="dashboard">
        <div class="dash"><h3>Saldo como vendedor</h3><strong id="dash-val-vendedor">0,00 MT</strong><br><button class="btn btn-primary" style="margin-top:12px" onclick="solicitarCashout('VENDEDOR')">Solicitar cash out</button></div>
        <div class="dash"><h3>Saldo como parceiro</h3><strong id="dash-val-parceiro">0,00 MT</strong><br><button class="btn" style="margin-top:12px;background:#2563eb;color:#fff" onclick="solicitarCashout('PARCEIRO')">Solicitar cash out</button></div>
      </div>
    </section>
  </section>

  <section id="product-view" class="hidden" style="padding:28px 0">
    <button class="btn btn-light" onclick="voltarVitrine()">← Voltar à vitrine</button>
    <div id="product-loading" class="loading"><span class="spinner"></span> A carregar produto...</div>
    <div id="product-detail" class="product-detail hidden"></div>
  </section>

  <section id="download-view" class="hidden" style="padding:40px 0">
    <div class="empty" style="border-style:solid;border-color:#86efac;background:#f0fdf4;color:#166534">
      <h2 style="margin:0 0 10px">Pagamento confirmado! 🎉</h2>
      <p style="margin-bottom:18px">O pagamento foi confirmado. Pode descarregar o produto.</p>
      <a id="download-link" class="btn btn-primary" href="#" target="_blank" rel="noopener">Baixar produto digital</a>
    </div>
  </section>
</main>

<footer><div class="container footer-inner"><div><strong>MOZ1VENDAS PRO</strong><br>Marketplace digital de Moçambique.</div><div>Produtos aprovados • Pagamentos NetShop • Acesso digital</div></div></footer>

<div id="account-modal" class="modal hidden" onclick="if(event.target===this)fecharConta()">
  <div class="modal-card">
    <button class="close" onclick="fecharConta()">×</button>
    <h2 style="margin:0">Minha Conta</h2>
    <div class="tabs"><button id="tab-login" class="tab active" onclick="mostrarAba('login')">Entrar</button><button id="tab-registo" class="tab" onclick="mostrarAba('registo')">Criar conta</button></div>

    <div id="account-login">
      <div class="form-group"><label>Telefone</label><input id="log-tel" type="tel" placeholder="84 / 85 / 86 / 87 XXXXXXX"></div>
      <div class="form-group"><label>E-mail</label><input id="log-email" type="email" placeholder="usuario@exemplo.com"></div>
      <div class="form-group"><label>Código de ativação <span style="font-weight:400;color:#64748b">(somente no primeiro login)</span></label><input id="log-codigo" inputmode="numeric" maxlength="6" placeholder="6 dígitos"></div>
      <div class="form-group"><label>PIN pessoal</label><input id="log-pin" type="password" inputmode="numeric" maxlength="4" placeholder="4 dígitos"></div>
      <button id="login-btn" class="btn btn-primary" style="width:100%" onclick="efetuarLogin()">Entrar</button>
      <p class="help" style="margin-top:10px">O código fornecido pelo administrador é usado apenas para ativar a conta no primeiro login. Depois disso, entra apenas com o PIN.</p>
    </div>

    <div id="account-registo" class="hidden">
      <div class="form-group"><label>Telefone</label><input id="reg-tel" type="tel" placeholder="84 / 85 / 86 / 87 XXXXXXX"></div>
      <div class="form-group"><label>E-mail</label><input id="reg-email" type="email" placeholder="usuario@exemplo.com"></div>
      <button id="register-btn" class="btn btn-primary" style="width:100%" onclick="solicitarAtivacao()">Solicitar ativação</button>
      <a id="wa-btn" class="wa hidden" target="_blank" rel="noopener">Enviar pedido ao administrador pelo WhatsApp</a>
      <p class="help" style="margin-top:10px">Depois de aprovado pelo administrador, use o código recebido no primeiro login para definir o seu PIN.</p>
    </div>

    <div id="logged-account" class="hidden">
      <div style="background:#f0fdf4;border-radius:12px;padding:15px;margin:15px 0"><strong id="account-name">Conta ativa</strong><div id="account-email" class="help"></div></div>
      <button class="btn btn-primary" style="width:100%" onclick="mostrarDashboard()">Ver meu painel</button>
      <button class="btn btn-light" style="width:100%;margin-top:8px" onclick="logout()">Terminar sessão</button>
    </div>
  </div>
</div>

<div id="toast" class="toast hidden"></div>

<script>
const GAS_API_URL='https://script.google.com/macros/s/AKfycbzLNAazM35o2OE5X8B68NeRg0NaUeJgcHv6Z32wleKmLf-lMC9Oa1EvJ42qBHoJQ9-f/exec';
const params=new URLSearchParams(location.search);const refCode=params.get('ref')||'';const prodCode=params.get('p')||'';
let produtos=[];let produtoAtual=null;let usuarioLogado=null;
try{usuarioLogado=JSON.parse(localStorage.getItem('moz1_user')||'null')}catch(e){usuarioLogado=null}
if(refCode)localStorage.setItem('moz1_parceiro_ref',refCode);

function toast(msg){const el=document.getElementById('toast');el.textContent=msg;el.classList.remove('hidden');clearTimeout(window._toast);window._toast=setTimeout(()=>el.classList.add('hidden'),3500)}
async function api(action,data={}){const r=await fetch(GAS_API_URL,{method:'POST',headers:{'Content-Type':'text/plain;charset=UTF-8'},body:JSON.stringify({action,data})});const text=await r.text();let out;try{out=JSON.parse(text)}catch(e){throw new Error('Resposta inválida do GAS. Verifique o URL do Web App e o deployment.')};return out}
function dinheiro(v){return Number(v||0).toLocaleString('pt-MZ',{minimumFractionDigits:2,maximumFractionDigits:2})+' MT'}
function escapeHtml(s){return String(s??'').replace(/[&<>'"]/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;',"'":'&#39;','"':'&quot;'}[c]))}

window.addEventListener('load',async()=>{await carregarVitrine();if(usuarioLogado)await carregarDashboard();if(prodCode)await abrirProduto(prodCode)});

async function carregarVitrine(){
  const loading=document.getElementById('products-loading');const grid=document.getElementById('products-grid');const empty=document.getElementById('products-empty');
  try{const res=await api('listarProdutosPublicos');produtos=(res&&res.success&&Array.isArray(res.produtos))?res.produtos:[];renderProdutos(produtos);document.getElementById('vitrine-status').textContent=produtos.length+' produto'+(produtos.length===1?'':'s');}
  catch(e){loading.classList.add('hidden');empty.classList.remove('hidden');empty.innerHTML='<strong>Não foi possível carregar a vitrine.</strong><br><small>'+escapeHtml(e.message)+'</small>';document.getElementById('vitrine-status').textContent='Erro';return}
  loading.classList.add('hidden');
}
function renderProdutos(lista){const grid=document.getElementById('products-grid'),empty=document.getElementById('products-empty');grid.innerHTML='';if(!lista.length){empty.classList.remove('hidden');return}empty.classList.add('hidden');lista.forEach(p=>{const card=document.createElement('article');card.className='product';card.innerHTML=`<img class="product-img" src="${escapeHtml(p.imagemUrl||'')}" alt="${escapeHtml(p.nome)}" loading="lazy" onerror="this.style.visibility='hidden'"><div class="product-body"><div class="product-title">${escapeHtml(p.nome)}</div><div class="price">${dinheiro(p.preco)}</div><div class="views">${Number(p.visualizacoes||0)} visualizações</div><button class="btn btn-primary" onclick="abrirProduto('${escapeHtml(p.id)}')">Ver produto</button></div>`;grid.appendChild(card)})}
function filtrarProdutos(){const q=document.getElementById('search').value.trim().toLowerCase();renderProdutos(produtos.filter(p=>String(p.nome||'').toLowerCase().includes(q)))}

async function abrirProduto(id){document.getElementById('home-view').classList.add('hidden');document.getElementById('product-view').classList.remove('hidden');document.getElementById('product-loading').classList.remove('hidden');document.getElementById('product-detail').classList.add('hidden');window.scrollTo({top:0,behavior:'smooth'});try{const p=await api('obterDetalhesProduto',{idProduto:id,idUsuarioLogado:usuarioLogado?usuarioLogado.id:null,ref:localStorage.getItem('moz1_parceiro_ref')||refCode});if(!p){toast('Produto indisponível ou em moderação.');voltarVitrine();return}produtoAtual=p;renderDetalhe(p)}catch(e){toast(e.message);voltarVitrine()}}
function renderDetalhe(p){document.getElementById('product-loading').classList.add('hidden');const el=document.getElementById('product-detail');el.classList.remove('hidden');el.innerHTML=`<div><img class="detail-img" src="${escapeHtml(p.imagemUrl||'')}" alt="${escapeHtml(p.nome)}"></div><div class="detail"><h2>${escapeHtml(p.nome)}</h2><p class="detail-desc">${escapeHtml(p.descricao||'')}</p><div class="breakdown"><p>Preço do produto: <strong>${dinheiro(p.precoBase)}</strong></p><p>Taxa da plataforma: <strong>${dinheiro(p.taxaPlataforma)}</strong></p>${p.temDesconto?'<p style="color:#d97706;font-weight:700">Desconto de parceiro aplicado: '+dinheiro(p.desconto)+'</p>':''}<div class="total">${dinheiro(p.precoTotal)}</div></div><div class="form-group"><label>Método de pagamento</label><select id="pay-method" onchange="alternarCamposPagamento()"><option value="mpesa">M-Pesa</option><option value="emola">e-Mola</option><option value="mkesh">mKesh</option><option value="card">Cartão Visa / Mastercard</option></select></div><div class="form-group" id="group-phone"><label>Telefone para cobrança</label><input id="pay-phone" type="tel" placeholder="84 / 85 / 86 / 87 XXXXXXX"></div><div class="form-group hidden" id="group-email"><label>E-mail do cartão</label><input id="pay-email" type="email" placeholder="cliente@email.com"></div><button id="btn-pay" class="btn btn-primary" style="width:100%" onclick="iniciarCheckoutNetshop()">Pagar agora</button><p class="help" style="margin-top:10px">${Number(p.visualizacoes||0)} visualizações • Cliente pode comprar sem criar conta.</p></div>`}
function voltarVitrine(){produtoAtual=null;document.getElementById('product-view').classList.add('hidden');document.getElementById('home-view').classList.remove('hidden');window.scrollTo({top:0,behavior:'smooth'})}
function alternarCamposPagamento(){const card=document.getElementById('pay-method').value==='card';document.getElementById('group-phone').classList.toggle('hidden',card);document.getElementById('group-email').classList.toggle('hidden',!card)}

async function iniciarCheckoutNetshop(){if(!produtoAtual)return;const metodo=document.getElementById('pay-method').value,telefone=document.getElementById('pay-phone').value.trim(),email=document.getElementById('pay-email').value.trim(),parceiroRef=localStorage.getItem('moz1_parceiro_ref')||'';if(metodo!=='card'&&!telefone)return toast('Informe o número do telemóvel.');if(metodo==='card'&&!email)return toast('Informe o e-mail do cartão.');const btn=document.getElementById('btn-pay');btn.disabled=true;btn.textContent='A iniciar pagamento...';try{const res=await api('processarPagamentoNetshop',{idProduto:produtoAtual.id,valorTotal:produtoAtual.precoTotal,metodo,telefone,email,idParceiro:parceiroRef,idComprador:usuarioLogado?usuarioLogado.id:null});if(!res.success){toast(res.message||'Pagamento não iniciado.');return}if(res.isCard&&res.redirectUrl){location.href=res.redirectUrl;return}if(res.isPaid){exibirDownload(res.downloadUrl);return}toast('Pagamento iniciado. Confirme no seu telemóvel.');if(res.chargeId)monitorarPagamento(res.chargeId)}catch(e){toast(e.message)}finally{btn.disabled=false;btn.textContent='Pagar agora'}}
function monitorarPagamento(chargeId){let n=0;const timer=setInterval(async()=>{n++;try{const res=await api('verificarEstadoCobrancaNetshop',{chargeId});if(res.status==='paid'){clearInterval(timer);exibirDownload(res.downloadUrl)}else if(['failed','cancelled','expired'].includes(res.status)||n>20){clearInterval(timer);toast('A transação falhou ou expirou.')}}catch(e){if(n>20){clearInterval(timer);toast('Não foi possível confirmar o pagamento.')}}},4000)}
function exibirDownload(url){if(!url)return toast('Pagamento confirmado, mas o link do produto não está configurado.');document.getElementById('home-view').classList.add('hidden');document.getElementById('product-view').classList.add('hidden');document.getElementById('download-view').classList.remove('hidden');document.getElementById('download-link').href=url;localStorage.removeItem('moz1_parceiro_ref');window.scrollTo({top:0,behavior:'smooth'})}

function abrirConta(aba='login'){document.getElementById('account-modal').classList.remove('hidden');if(usuarioLogado){document.getElementById('account-login').classList.add('hidden');document.getElementById('account-registo').classList.add('hidden');document.getElementById('logged-account').classList.remove('hidden');document.getElementById('account-name').textContent='Conta ativa';document.getElementById('account-email').textContent=usuarioLogado.email||''}else{document.getElementById('logged-account').classList.add('hidden');mostrarAba(aba)}}
function fecharConta(){document.getElementById('account-modal').classList.add('hidden')}
function mostrarAba(aba){document.getElementById('account-login').classList.toggle('hidden',aba!=='login');document.getElementById('account-registo').classList.toggle('hidden',aba!=='registo');document.getElementById('tab-login').classList.toggle('active',aba==='login');document.getElementById('tab-registo').classList.toggle('active',aba==='registo')}

async function solicitarAtivacao(){const tel=document.getElementById('reg-tel').value.trim(),email=document.getElementById('reg-email').value.trim(),btn=document.getElementById('register-btn');if(!tel||!email)return toast('Informe telefone e e-mail.');btn.disabled=true;btn.textContent='A enviar...';try{const res=await api('registrarUsuario',{telefone:tel,email});if(res.success){toast('Pedido criado. Envie a mensagem ao administrador.');const wa=document.getElementById('wa-btn');wa.href=res.waLink;wa.classList.remove('hidden')}else toast(res.message||'Não foi possível criar o pedido.')}catch(e){toast(e.message)}finally{btn.disabled=false;btn.textContent='Solicitar ativação'}}
async function efetuarLogin(){const tel=document.getElementById('log-tel').value.trim(),email=document.getElementById('log-email').value.trim(),codigo=document.getElementById('log-codigo').value.trim(),pin=document.getElementById('log-pin').value.trim(),btn=document.getElementById('login-btn');if(!tel||!email||!pin)return toast('Informe telefone, e-mail e PIN.');btn.disabled=true;btn.textContent='A entrar...';try{const res=await api('autenticarUsuario',{telefone:tel,email,codigo,pin});if(res.success){usuarioLogado=res.user;localStorage.setItem('moz1_user',JSON.stringify(res.user));fecharConta();toast('Login efetuado com sucesso.');await carregarDashboard()}else toast(res.message||'Falha no login.')}catch(e){toast(e.message)}finally{btn.disabled=false;btn.textContent='Entrar'}}
function logout(){localStorage.removeItem('moz1_user');usuarioLogado=null;document.getElementById('dashboard-section').classList.add('hidden');fecharConta();toast('Sessão terminada.')}
async function carregarDashboard(){if(!usuarioLogado)return;const res=await api('carregarDashboard',{userId:usuarioLogado.id});if(!res.success){logout();return}document.getElementById('dashboard-section').classList.remove('hidden');document.getElementById('dash-val-vendedor').textContent=dinheiro(res.saldoVendedor);document.getElementById('dash-val-parceiro').textContent=dinheiro(res.saldoParceiro)}
function mostrarDashboard(){fecharConta();document.getElementById('dashboard-section').scrollIntoView({behavior:'smooth'})}
async function solicitarCashout(perfil){if(!usuarioLogado)return abrirConta('login');const tel=prompt('Número M-Pesa / e-Mola / mKesh:'),valor=prompt('Valor a levantar em MT:'),metodo=prompt('Carteira: mpesa, emola ou mkesh','mpesa');if(!tel||!valor)return;try{const res=await api('solicitarPayoutNetshop',{userId:usuarioLogado.id,perfil,valor:Number(valor),telefone:tel,metodo});toast(res.message||'Pedido enviado.');if(res.success)await carregarDashboard()}catch(e){toast(e.message)}}
</script>
</body>
</html>
