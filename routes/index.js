const express = require('express')
const router  = express.Router()

// res -> resposta do servidor

router.get('/', (req, res) => {
    res.render('index')
})

module.exports = router