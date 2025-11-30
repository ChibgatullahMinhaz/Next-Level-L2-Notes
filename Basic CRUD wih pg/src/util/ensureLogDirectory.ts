import fs from "fs";
import path from "path";

// 1. Define the full path to the logs folder
export const LOGS_DIR = path.join(process.cwd(), './src/logs');

// 2. Check and Create the directory
function ensureLogDirectory() {
  if (!fs.existsSync(LOGS_DIR)) {
    try {
      // Use synchronous mkdir to ensure the folder is ready before proceeding
      fs.mkdirSync(LOGS_DIR, { recursive: true });
      console.log(`Successfully created logs directory at: ${LOGS_DIR}`);
    } catch (err) {
      console.error("Error creating logs directory:", err);
    }
  }
}

export default ensureLogDirectory;