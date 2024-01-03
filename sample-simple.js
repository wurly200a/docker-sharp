const sharp = require('sharp')

sharp('input.heic').jpeg().toFile('output.jpg')
