import express from 'express';
import {obterTop3Ranking } from '../controllers/RankingController.js';

const router = express.Router();


// Rota para obter o Top 3 do ranking
router.get('/top3', obterTop3Ranking);

export default router;
