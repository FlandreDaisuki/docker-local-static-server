#!/usr/bin/env node

import express from 'express';
import cors from 'cors';

const app = express();
const port = process.env.PORT ?? 3000;

app.use(cors());
app.use(express.static('/root/www'));

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
