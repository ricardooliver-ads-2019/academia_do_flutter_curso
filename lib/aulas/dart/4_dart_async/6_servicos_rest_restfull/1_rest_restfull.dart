// Rest & RestFull

// Rest -> é um conceito de comunicação, ou seja, é a troca de informações entre sistemas ultilizando o protocolo HTTP
// Em Resumo é um padrão de envio de dados ultilizando a internet.

// Caracteristicas (Cliente-servidor)
// Os aplicativos Rest têm um servidor que gerencia os dados e o estado do aplicativo.
//O servidor se comunica com um cliente que lida com as interações do usuário. Uma separação clara de interesses
//divide os dois componentes. Isso siginifica que você pode atualizá-los e aprimorá-los de uma forma independente
// Stateless -> Os servidores não mantêm nenhum estado de cliente.
//Os clientes gerenciam o estado do aplicativo. 
//Seus pedidos aos servidores contêm todas as informações necessarias para processá-los
// Um serviço RESTful possui uma URI para cada item do invéntario

//! -> Um serviço RESTfull possui uma URI para cada item no inventário.

// VERBOS HTTP
/**
 * Verbo GET: BUSCAR RECURSO 'CACHE' (Sem passagem de ID: vai retornar todas as notas).
 * Verbo POST: CRIA UM NOVO RECURSO
 * Verbo PUT: ATUALIZAR UM RECURSO POR COMPLETO
 * Verbo DELETE: REMOVE UM RECURSO
 * Verbo PATCH: Usado para editar o recurso sem a necessidade de enviar todos os atributos – o consumidor envia apenas aquilo que de fato foi alterado (mais o ID como parâmetro, para que o serviço saiba o que vai ser alterado).
 * 
-------------------------------------------- 

====================== STATUS HTTP ==========================
Referencias -> https://www.devmedia.com.br/http-status-code/41222

Informal:  -> Indica que o servidor ainda está processando a requisição de alguma forma.
100 Continue
101 Switching Protocols
102 Processing

---------------------------------------------
Success: -> A requisição foi completamente recebida e o servidor entregou ao cliente o recurso esperado.
200 Ok
201 Created
202 Accepted
203 Non-authoritative Information
204 No Content
205 Reset Content
206 Partial Content
207 Multi-Status
208 Already Reported
226 Im Used

---------------------------------------------
Redirection -> 
300 Multiple Choices
301 Moved Permanently
302 Found
303 See Other
304 Not Modified
305 Use Proxy
307 Temporary Redirect
308 Permanent Redirect
Client Erros
400 Bad Request
401 Unauthorized
402 Payment Required
403 Forbidden
404 Not Found
405 Method Not Allowed
406 Not Acceptable
407 Proxy Authentication Required
408 Request Timeout
409 Conflict
410 Gone
411 Length Required
412 Precondition Failed
413 Payload Too Large
414 Request-URI Too Long
415 Unsupported Media Type
416 Requested Range Not Satisfiable
417 Expectation Failed
418 I'm a teapot
421 Misdirected Request
422 Unprocessable Entity
423 Locked
424 Failed Dependency
426 Upgrade Required
428 Precondition Required
429 Too Many Requests
431 Request Header Fields Too Large
444 Connection Closed Without Response
451 Unavailable For Legal Reasons
499 Client Closed Request

---------------------------------------------
Server Error -> Os códigos nesse intervalo correspondem a erros relacionados ao servidor.
500 Internal Server Error
501 Not Implemented
502 Bad Gateway
503 Service Unavailable
504 Gateway Timeout
505 HTTP Version Not Supported
506 Variant Also Negotiates
507 Insufficient Storage
508 Loop Detected
510 Not Extended
511 Network Authentication Required
599 Network Connect Timeout Error
 */