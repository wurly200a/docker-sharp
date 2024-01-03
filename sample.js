const sharp = require('sharp');

async function convertHeicToJpeg(inputPath, outputPath) {
  try {
    await sharp(inputPath)
      .jpeg({ quality: 90, progressive: true, withMetadata: true })
      .toFile(outputPath);

    console.log('completed');
  } catch (error) {
    console.error('Error occured:', error);
  }
}

const inputPath = 'input.heic';
const outputPath = 'output.jpg';

convertHeicToJpeg(inputPath, outputPath);
