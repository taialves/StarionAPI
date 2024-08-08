import { verificarPontuacaoExistente, atualizarPontuacao, inserirPontuacao, obterTop3 } from '../models/Ranking.js';

export const atualizarOuInserirPontuacao = (req, res) => {
    const { jogador_id, pontuacao, tempo_conclusao } = req.body;

    verificarPontuacaoExistente(jogador_id, (err, results) => {
        if (err) return res.status(500).json({ error: 'Erro ao verificar pontuação existente.' });

        if (results.length > 0) {
            atualizarPontuacao(jogador_id, pontuacao, tempo_conclusao, (err) => {
                if (err) return res.status(500).json({ error: 'Erro ao atualizar pontuação.' });
                res.status(200).json({ message: 'Pontuação atualizada com sucesso.' });
            });
        } else {
            inserirPontuacao(jogador_id, pontuacao, tempo_conclusao, (err) => {
                if (err) return res.status(500).json({ error: 'Erro ao inserir pontuação.' });
                res.status(201).json({ message: 'Pontuação inserida com sucesso.' });
            });
        }
    });
};

export const obterTop3Ranking = (req, res) => {
    obterTop3((err, results) => {
        if (err) return res.status(500).json({ error: 'Erro ao obter Top 3 do ranking.' });
        res.status(200).json(results);
    });
};





