List listaDynami = [];
List<String> listaString = ['R', 'O'];
//...
var lista = [];
var listaInt = <int>[];

// Por padrão as listas não podem ser null
// List<double> listNaoAceitaNull; --> ERROR

List<int>? ListQuePodeSerNull; //! --> essa lista pode ser null;

//! essa lista ela não pode ser null, mas aceita receber valores null
//List<bool?> list = null; --> ERROR Pois a lista não pode ser nula 
var listQueAceitaSeuValoresSeremNull = <int?>[1, 8, 5, null];
List<int?>listQueAceitaSeuValoresSeremNull2 = [1, 8, 5, null]; 
//=========================================================================
//! essa lista ela não pode ser null e aceita receber valores null
List<int?>? listQuePodeSerNulleAceitaSeuValoresSeremNull;
List<int?>?llistQuePodeSerNulleAceitaSeuValoresSeremNull2 = [1, 8, 5, null]; 