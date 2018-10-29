var fs = require('fs');

const generateHTML = (path) => {
  var fileName = 'vrt.html';
  var stream = fs.createWriteStream(path + fileName);

  stream.once('open', function(fd) {
    var html = buildHtml();
    stream.end(html);
  });
};

const buildHtml = () => {
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
        body += generateReportRow();
        body += generateReportRow();
        body += generateReportRow();
      body += '</div>' // End container
    body += '</div>'
  body += '</div>' // End app

  return '<!DOCTYPE html><html><head>' + metadata + scripts + css + '</head><body>' + body + '</body></html>';
}

const generateReportRow = () => {
  var row = "";
  row += '<div class="reportRow row">'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="./img/tests/photo2-1540594181868.png" alt="test">'
    row += '</div>'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="./img/tests/photo2-1540594181868.png" alt="test">'
    row += '</div>'
    row += '<div class="imageEntry col-md-3">'
      row += '<img class="testImage" src="./img/tests/photo2-1540594181868.png" alt="test">'
    row += '</div>'
    row += '<div class="infoEntry col-md-3">'
      row += '<div><strong>Mismatch Percentage:</strong> 1.05</div>'
      row += '<div><strong>Is Same Dimensions:</strong> true</div>'
      row += '<div><strong>Width Difference:</strong> 0</div>'
      row += '<div><strong>Height Difference:</strong> 0</div>'
    row += '</div>' // End infoEntry
  row += '</div>' // End reportRow
  return row;
}

// Export all methods
module.exports = {
  generateHTML
};
