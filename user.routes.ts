import { Router } from 'express';
import { authenticate } from '../middleware/auth';

const router = Router();

router.use(authenticate);

// Placeholder routes
router.get('/profile', (req, res) => res.json({ message: 'Get profile' }));
router.put('/profile', (req, res) => res.json({ message: 'Update profile' }));
router.get('/wishlist', (req, res) => res.json({ message: 'Get wishlist' }));
router.post('/wishlist', (req, res) => res.json({ message: 'Add to wishlist' }));

export default router;
