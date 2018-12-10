var fs = require('fs');
var resemble = require('resemblejs');

const generateHTML = async (pairs, beforePath, afterPath, doneGeneratingCallback) => {
  console.log("::::generateHTML");
  var fileName = 'vrt.html';
  var stream = fs.createWriteStream(afterPath + fileName);
  var resultPairs = [];
  for(var i = 0; i < pairs.length; i++) {
    console.log("::::generateHTML:for");
    let result = await generateDifferenceImage(beforePath, afterPath, pairs[i]);
    if(result) {
        resultPairs.push(result);
    }
  }
  await writeHTML(afterPath, fileName, pairs, resultPairs, doneGeneratingCallback)
};

async function writeHTML(path, fileName, pairs, resultPairs, doneGeneratingCallback) {
  console.log("::::writeHTML");
  var stream = fs.createWriteStream(path + fileName);
  stream.once('open', function(fd) {
    var html = buildHtml(pairs, resultPairs);
    stream.end(html);
    doneGeneratingCallback();
  });
}

const buildHtml = (pairs, resultPairs) => {
  console.log("::::buildHtml");
  // Headers
  let bootstrapcss = '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">'
  let jquery = '<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>'
  let popper = '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>'
  let bootstrapjs = '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>'
  let metadata = '<meta charset="UTF-8"><title>VRT</title>'
  let scripts = bootstrapcss + jquery + popper + bootstrapjs;
  let css = '<style>.btnGenerarReporte { width: 100%; height: 60px; margin-top: 30px; } .header { text-align: center; } .dateEntry { margin: auto 0; } .table-header { margin-top: 20px; } .testImage { height: 100%; width: 100%; } .reportRow { margin-top: 20px; } .infoEntry { font-size: 13px; }</style>';

  // Body
  var body = '<div id="app">';
    body += '<div>'
      body += '<div class="container">'
        body += '<button type="button" disabled="" class="btnGenerarReporte btn btn-primary disabled">Reportes</button>'
        body += '<div class="table-header row">'
          body += '<div class="header col-md-3">Imagen Base</div>'
          body += '<div class="header col-md-3">Imagen Modificada</div>'
          body += '<div class="header col-md-3">Diferencias</div>'
          body += '<div class="header col-md-3">Info</div>'
        body += '</div>' // End table-header
        for(var i = 0; i < pairs.length && i < resultPairs.length; i++) {
            body += generateReportRow(pairs[i], resultPairs[i]);
        }
      body += '</div>' // End container
    body += '</div>'
  body += '</div>' // End app

  return '<!DOCTYPE html><html><head>' + metadata + scripts + css + '</head><body>' + body + '</body></html>';
}

const generateReportRow = (pair, resultPair) => {
  var row = "";
  row += '<div class="reportRow row">'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="' + pair.before + '" alt="test">'
    row += '</div>'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="' + pair.after + '" alt="test">'
    row += '</div>'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="' + pair.result + '" alt="test">'
    row += '</div>'
    row += '<div class="infoEntry col-md-3">'
      row += '<div><strong>Mismatch Percentage: </strong>' + resultPair.misMatchPercentage +'</div>'
      row += '<div><strong>Is Same Dimensions: </strong>' + resultPair.isSameDimensions + '</div>'
      row += '<div><strong>Width Difference: </strong>' + resultPair.dimensionDifference.width + '</div>'
      row += '<div><strong>Height Difference: </strong>' + resultPair.dimensionDifference.height + '</div>'
    row += '</div>' // End infoEntry
  row += '</div>' // End reportRow
  return row;
}

async function generateDifferenceImage(beforePath, afterPath, pair) {
  console.log(":::::::::::::::::generateDifferenceImage");
  let diff = resemble(beforePath + pair.before).compareTo(afterPath + pair.after).ignoreColors();
  let diffResult = await new Promise((resolve) => diff.onComplete(resolve));
  if(!diffResult.getBuffer){ console.log("ERROR"); return;} 
  let result = await fs.writeFile(afterPath + pair.result, diffResult.getBuffer(), () => {});
  console.log(result);
  let data = {
    misMatchPercentage: diffResult.misMatchPercentage,
    isSameDimensions: diffResult.isSameDimensions,
    dimensionDifference: diffResult.dimensionDifference
  };
  return data;
}

// Export all methods
module.exports = {
  generateHTML
};
