var express = require('express'); // Get the module
var mysql = require('mysql');

const app = express();
const port = 3000;


app.get('/', (req, res) => {

    var con = mysql.createConnection({
        host: "mysql",
        user: "root",
        password: "root!",
        database: "superTeste"
    });

    con.connect(function(err) {
        try {
            if (err) throw err;
    
            var listaPessoas = new Array();
            con.query("SELECT * FROM Pessoa", function (err, result, fields) {
                try {
                    if (err) throw err;
                    result.forEach(pessoa => listaPessoas.push(pessoa))
                    con.end();
                    res.json(listaPessoas);
                } catch (error) {
                    res.json({Mensagem: "Algo de ruim aconteceu durante a conexão...", Erro: error});
                }
            });
        } catch (error) {
            res.json({Mensagem: "Algo de ruim aconteceu ao se conectar...", Erro: error});
        }
    });  
})

app.listen(port, () => {
  console.log("Servidor ouvindo na porta: " + port)
});