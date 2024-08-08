import express from "express"
import bodyParser from 'body-parser'

import jogadorRotas from './routes/jogadorRota.js';
import selecaoRotas from './routes/jogadorPersonagemRota.js';
import quizRotas from './routes/quizRota.js';
import personagemRotas from './routes/personagemRota.js';
import rankingRotas from './routes/rankingRota.js'
const app = express()
const porta = 3000
app.use(bodyParser.json());

// rotas
app.use('/jogador', jogadorRotas);
app.use('/selecao', selecaoRotas)
app.use('/quiz', quizRotas)
app.use('/personagens', personagemRotas)
app.use('/ranking', rankingRotas)

app.listen(porta, ()=>{
    console.log(`servidor rodando na porta ${porta}`)
})

