const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('<p>Hello there, you have successfully started a NodeJS docker container! Woohoo!' + 
    '</br> To integrate your NodeJs web app simply copy your existing source files into the root directory so that' +
    '</br> your package.json file is in the same level as the Dockerfile and build.</p>');
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});