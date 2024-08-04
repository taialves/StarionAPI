import express from "express"
import bodyParser from 'body-parser'

import jogadorRotas from './routes/jogadorRota.js';



const app = express()
const porta = 3000
app.use(bodyParser.json());

// rotas
app.use('/jogador', jogadorRotas);

app.listen(porta, ()=>{
    console.log(`servidor rodando na porta ${porta}`)
})