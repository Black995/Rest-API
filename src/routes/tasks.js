import { Router } from 'express';
const router = Router();

import { createTask, getTasks, updateTask, deleteTask, getOneTask, getTasksByProject } from '../controllers/task.controller'

// /aqpi/tasks/
router.post('/', createTask);
router.get('/', getTasks);

// /aqpi/tasks/:id
router.delete('/:id', deleteTask);
router.put('/:id', updateTask);
router.get('/:id', getOneTask);

// /api/tasks/project/:projectid
router.get('/project/:projectid', getTasksByProject);

export default router;