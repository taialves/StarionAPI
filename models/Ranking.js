import { db } from '../db.js';

// Função para verificar se o jogador já tem uma pontuação registrada
export const verificarPontuacaoExistente = (jogador_id, callback) => {
    const query = 'SELECT id FROM ranking WHERE jogador_id = ?';
    db.query(query, [jogador_id], callback);
};

// Função para atualizar a pontuação e o tempo de conclusão
export const atualizarPontuacao = (jogador_id, pontuacao, tempo_conclusao, callback) => {
    const query = 'UPDATE ranking SET pontuacao = ?, tempo_conclusao = ? WHERE jogador_id = ?';
    db.query(query, [pontuacao, tempo_conclusao, jogador_id], callback);
};

// Função para inserir uma nova pontuação
export const inserirPontuacao = (jogador_id, pontuacao, tempo_conclusao, callback) => {
    const query = 'INSERT INTO ranking (jogador_id, pontuacao, tempo_conclusao) VALUES (?, ?, ?)';
    db.query(query, [jogador_id, pontuacao, tempo_conclusao], callback);
};

// Função para obter o Top 3 do ranking
export const obterTop3 = (callback) => {
    const query = 'SELECT r.jogador_id, j.nome, r.pontuacao, r.tempo_conclusao FROM ranking r JOIN jogadores j ON r.jogador_id = j.id ORDER BY r.pontuacao DESC, r.tempo_conclusao ASC LIMIT 3;';
    db.query(query, callback);
};
