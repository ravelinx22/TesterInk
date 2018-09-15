var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {
  Given('I go to prestashop home screen', () => {
    browser.url('http://localhost/prestashop/admin981uwtirw/index.php');

  });

  When('I open the login screen', () => {



  try{

    /*
    cuando pase a usar tabla de datos en la segunda pasada de las pruebas, 
    cuando toma los valores de  miso@gmail.com para el usuario y password con el valor 
    1234 molestaba la feature de  "I open the login screen", asi que lo meti dentro de este try-catch
    porque me imagine que al pasar por segunda vez por ahi el dialogo de login ya estaba mostrado y el click
    sobre ese elemento no funcionada y al parecer eso era! YEAH!
    */
    browser.click('div.modal-body'); //ok

  }catch(err){
    console.log('FYB !');
  }

    browser.click('button.botonIngresar');


  

});


  When('I try to login', () => {
    var cajaLogIn = browser.element('div.front_login');
    cajaLogIn.element('button[id="submit_login"]').click()
  });


When('I add a new product', () => {
    browser.waitForVisible('li[id="subtab-AdminCatalog"] a', 20000);
    browser.click('li[id="subtab-AdminCatalog"] a', 5000);


    browser.waitForVisible('li[id="subtab-AdminProducts"] a', 20000);
    browser.click('li[id="subtab-AdminProducts"] a', 5000);


    browser.waitForVisible('a[id="page-header-desc-configuration-add"]', 50000);
    browser.click('a[id="page-header-desc-configuration-add"]', 50000)

    browser.waitForVisible('input[id="form_step1_name_1"]', 30000);
    browser.click('input[id="form_step1_name_1"]', 30000);


    browser.waitForVisible('input[id="form_step1_name_1"]', 30000);
    var mailInput = cajaLogIn.element('input[id="form_step1_name_1"]');
    mailInput.click();
    mailInput.keys('producto 1');


  });




//########################################################################################################


When('Then I expect to see user profile button', error => {
    browser.click('li[id="employee_infos"]'); //, 50000);
    //browser.waitForVisible('a[id="header_logout"]'); 
});





When(/^I fill with (.*) and (.*)$/ , (email, password) => {

    browser.waitForVisible('div.front_login', 10000);

    var cajaLogIn = browser.element('div.front_login');

    var mailInput = cajaLogIn.element('input[id="email"]');
    mailInput.click();
    mailInput.keys(email);

    var passwordInput = cajaLogIn.element('input[id="passwd"]');
    passwordInput.click();
    passwordInput.keys(password)
});

When(/^I sign up with (.*) and (.*) and (.*) and (.*) and (.*) and (.*) and (.*) and(.*)$/ , (name, lastname, email, universidad, maestria, password, pregrado, estudia_maestria) => {

    browser.waitForVisible('.cajaSignUp', 10000);

    var cajaLogIn = browser.element('.cajaSignUp');

    var nombreInput = cajaLogIn.element('input[name="nombre"]');
    nombreInput.click();
    nombreInput.keys(name);

    var apellidoInput = cajaLogIn.element('input[name="apellido"]');
    apellidoInput.click();
    apellidoInput.keys(lastname);

    var correoInput = cajaLogIn.element('input[name="correo"]');
    correoInput.click();
    correoInput.keys(email);

    var universidadInput = cajaLogIn.element('select[name="idUniversidad"]');
    universidadInput.selectByVisibleText(universidad);

    if(estudia_maestria === 'true'){
    

      var maestriaInput = cajaLogIn.element('input[type="checkbox"].jsx-527058112');
      maestriaInput.click();


      var programaInput = cajaLogIn.element('select[name="idPrograma"]');
      programaInput.selectByVisibleText(maestria);

    }else if(estudia_maestria === 'false'){
      var programaInput = cajaLogIn.element('select[name="idPrograma"]');
      programaInput.selectByVisibleText(pregrado);
    }

    var passwordInput = cajaLogIn.element('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password);


    var aceptoInput = cajaLogIn.element('input[type="checkbox"].jsx-520551651');
    aceptoInput.click();


    var submitInput = cajaLogIn.element('button[type="submit"].jsx-527058112');
    submitInput.click();




});

Then('I expect to see {string}', error => {
    try{

      browser.waitForVisible('div[id="error"]', 5000);
      var alertText = browser.element('div[id="error"] p strong').getText();
      expect(alertText).to.include(error);

    }catch(err){

    }

    try{

      browser.waitForVisible('div[role=alert]', 5000);
      var alertText = browser.element('div[role=alert]').getText();
      expect(alertText).to.include(error);

    }catch(err){

    }
   
});


Then('I expect to see Registro exitoso', () => {

   browser.waitForVisible('div.sweet-alert h2', 20000);
   var alertText = browser.element('div.sweet-alert h2').getText();
   expect(alertText).to.include('Registro exitoso!');

     
});


Then('I logout {email} and {password}', (email, password)=> {

    if(browser.isVisible('li[id="employee_infos')) {
      browser.click('li[id="employee_infos');


      browser.waitForVisible('a[id="header_logout"]', 5000);

      browser.click('a[id="header_logout"]');






    }

});




//########################################################################################################




  Then('I expect to not be able to login', () => {
    browser.waitForVisible('.aviso.alert.alert-danger', 10000);
  });
});

