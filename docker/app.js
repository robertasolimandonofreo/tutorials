const express = require('express');
const app = express();
app.get('/', function (req, res) {
res.send('Consultoria Soliman');
});
app.listen(3000, function () {
 console.log('Servidor Consultoria Soliman rodando na porta 3000!');
});