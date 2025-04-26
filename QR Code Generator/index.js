import inquirer from 'inquirer';
import qr from 'qr-image';
import fs from 'fs';


inquirer
  .prompt([
    /* Pass your questions in here */
    {
        message: 'Enter your URL:',
        name: 'URL',
    },
  ])
  .then((answers) => {
    // Use user feedback for... whatever!!
   const url = answers.URL;
   var qr_svg = qr.image(url);
   qr_svg.pipe(fs.createWriteStream('qr_img.png'));

   fs.writeFile('URL.txt', url, (err) =>{
    if(err) throw err;
    console.log('URL has been saved to your URL txt file')
   });
   console.log(answers);
  })
  .catch((error) => {
    if (error.isTtyError) {
      // Prompt couldn't be rendered in the current environment
      console.error('Prompt could not be rendered in the current environment.');

    } else {
      // Something else went wrong
      console.error('An error occurred:', error);
    }
  });