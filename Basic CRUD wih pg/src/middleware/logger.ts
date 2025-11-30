import { NextFunction, Request, Response } from "express";
import fs from "fs";
import path from "path";
import ensureLogDirectory, { LOGS_DIR } from "../util/ensureLogDirectory";

const LOG_FILE_PATH = path.join(LOGS_DIR, "logs.txt");

export const logger = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  console.log(`${new Date()} ${req.method} ${req.url}`);
  ensureLogDirectory();
  const timestamp = `${new Date().toISOString()} ${req.method} ${req.url}`;
  const logEntry = `${timestamp} \n`;
  fs.appendFile(LOG_FILE_PATH, logEntry, (err) => {
    if (err) {
      console.error("Failed to write log entry:", err);
    }
  });
  next();
};
