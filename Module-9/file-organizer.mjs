import fs from 'fs'
import path from 'path';
import { fileURLToPath } from 'url';
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

//* joining current dir wit the output/messy-files folder
const sourceDir = path.join(__dirname, "output", "messy-files");
const organizedDir = path.join(__dirname, "output", "organized");
console.log('source Directory : ', sourceDir);
console.log('Organized Directory : ', organizedDir);

const categories = {
    images: [".jpg", ".jpeg", ".png", ".gif", ".bmp", ".svg"],
    documents: [".pdf", ".doc", ".docx", ".txt", ".rtf"],
    videos: [".mp4", ".avi", ".mkv", ".mov", ".wmv"],
    audio: [".mp3", ".wav", ".flac", ".aac", ".ogg"],
    code: [".js", ".py", ".java", ".cpp", ".html", ".css"],
    archives: [".zip", ".rar", ".tar", ".gz", ".7z"],
    spreadsheets: [".xls", ".xlsx", ".csv"],
    others: [],
};

const testFiles = [
    "vacation.jpg",
    "report.pdf",
    "presentation.pptx",
    "music.mp3",
    "video.mp4",
    "script.js",
    "data.csv",
    "archive.zip",
    "photo.png",
    "notes.txt",
    "app.py",
    "movie.avi",
    "song.wav",
    "backup.tar.gz",
    "random.xyz",
    "nodejs.zip",
];

function initDir() {
    if (!fs.existsSync(sourceDir)) {
        //* make folder inside sourceDir
        fs.mkdirSync(sourceDir, { recursive: true });
        testFiles.forEach((file) => {
            //* like sourceDir >> Output/messy-files >> file.png
            fs.writeFileSync(path.join(sourceDir, file),`Content of ${file}`)
        })

    }

    console.log("Messy directories files are created!!!");
    if (!fs.existsSync(organizedDir)) {
        fs.mkdirSync(organizedDir, { recursive: true });
    }
    Object.keys(categories).forEach((cat)=>{
        const categoryPath = path.join(organizedDir, cat)
        if (!fs.existsSync(categoryPath)) {
            fs.mkdirSync(categoryPath);
        }
    })

}
initDir()