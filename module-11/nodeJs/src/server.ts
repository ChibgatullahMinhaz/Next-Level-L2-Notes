import http, { IncomingMessage, Server, ServerResponse } from 'http'
import config from '../';

const server:Server = http.createServer((req:IncomingMessage, res:ServerResponse)=>{
    res.writeHead(200, { 'Content-Type': 'application/json' });

    if (req.url ==='/' && req.method =='GET') {
            res.writeHead(200, { 'Content-Type': 'application/json' });

        res.end(JSON.stringify({
            message:'Welcome to Home Rout',
            path: req.url,
        }))
    }
});



server.listen(config.port, ()=>{
    console.log('Server Running on 6000 port');
})