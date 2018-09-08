function loadScript(callback) {
  var s = document.createElement('script');
  s.src = 'https://rawgithub.com/marmelab/gremlins.js/master/gremlins.min.js';
  if (s.addEventListener) {
    s.addEventListener('load', callback, false);
  } else if (s.readyState) {
    s.onreadystatechange = callback;
  }
  document.body.appendChild(s);
}

function unleashGremlins(ttl, callback) {
  function stop() {
    horde.stop();
    callback();
  }
  var horde = window.gremlins.createHorde();
  horde.seed(1234);


  /*
  CONFIGURAMOS EL GREMLIN DE LLENADO DE CAMPOS DE TEXTO PARA QUE SOLO DE CLICKS EN ELEMENTOS DE TIPO TEXTO(DE LLENAR...)
  */

  var formFillerGremlin = gremlins.species.formFiller();

  formFillerGremlin.elementMapTypes(
    {'textarea': function fillTextElement(element) {} } , 

    {'input[type="text"]': function fillTextElement(element) {} },
    {'input[type="password"]': function fillTextElement(element) {} },
    {'input[type="number"]': function fillNumberElement(element) {} }

  );

  horde.gremlin(formFillerGremlin);



  /*
    CONFIGURAMOS EL GREMLIN DE CLICKS PARA QUE SOLO LANCE EVENTOS DE CLICKS
  */
  var clickerGremlin = gremlins.species.clicker();

  clickerGremlin.clickTypes(['click']);  

  horde.gremlin(clickerGremlin);



  /*
    CONFIGURAMOS LA ESTRATEGIA PARA QUE SE LE DE MAS PRIORIDAD AL GREMLIN DE CLICKS QUE AL DE LLENADO DE CAMPOS DE TEXTO
  */
  horde.strategy(gremlins.strategies.distribution()
    .delay(50) // wait 50 ms between each action
    .distribution([0.2, 0.8]) 
  );


  horde.after(callback);
  window.onbeforeunload = stop;
  setTimeout(stop, ttl);
  horde.unleash();

}

describe('Monkey testing with gremlins ', function() {

  it('it should not raise any error', function() {
    browser.url('http://localhost/prestashop/admin981uwtirw/index.php');

    browser.setValue('#email','julborre@gmail.com');
    browser.setValue('#passwd','miso2017');

    browser.click('#submit_login');

    browser.timeoutsAsyncScript(100000);
    browser.executeAsync(loadScript);


    browser.timeoutsAsyncScript(100000);
    browser.executeAsync(unleashGremlins, 50000);

  });

  afterAll(function() {
    browser.log('browser').value.forEach(function(log) {
      browser.logger.info(log.message.split(' ')[2]);
    });
  });

});
