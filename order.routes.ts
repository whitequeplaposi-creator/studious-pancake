import { Router } from 'express';
import { authenticate } from '../middleware/auth';

const router = Router();

router.use(authenticate);

// Placeholder routes
router.post('/', (req, res) => res.json({ message: 'Create order' }));
router.get('/', (req, res) => res.json({ message: 'Get orders' }));
router.get('/:id', (req, res) => res.json({ message: 'Get order by ID' }));
router.put('/:id/status', (req, res) => res.json({ message: 'Update order status' }));

export default router;
