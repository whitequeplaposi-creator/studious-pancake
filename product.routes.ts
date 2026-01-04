import { Router } from 'express';

const router = Router();

// Placeholder routes - will be implemented in next task
router.get('/', (req, res) => res.json({ message: 'Get all products' }));
router.get('/:id', (req, res) => res.json({ message: 'Get product by ID' }));
router.post('/search', (req, res) => res.json({ message: 'Search products' }));
router.get('/categories', (req, res) => res.json({ message: 'Get categories' }));
router.get('/flash-sales', (req, res) => res.json({ message: 'Get flash sales' }));

export default router;
