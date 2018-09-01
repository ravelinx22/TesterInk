describe('Prestashop customize options', function() {
 it('Create a new category', function(browser) {
    browser
      .url('http://localhost:8888/prestashop/admin727jfmfc7')
      .setValue('#email', 'wr.ravelo@uniandes.edu.co')
      .setValue('#passwd', 'pruebasautomaticas')
      .click('#stay_logged_in')
      .click('#submit_login')
      .waitForElementPresent('#subtab-AdminParentThemes', 5000)
      .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminCmsContent')
      .waitForElementPresent('#desc-cms_category-new', 5000)
      .click('#desc-cms_category-new')
      .waitForElementPresent('#name_1', 5000)
      .setValue('#name_1', 'Test')
      .setValue('#description_1', 'Test')
      .setValue('#meta_title_1', 'Test')
      .setValue('#meta_description_1', 'Test')
      .setValue('#meta_keywords_1', 'Test')
      .click('#cms_category_form_submit_btn')
      .waitForElementPresent('.alert.alert-success', 5000)
      .verify.containsText('.alert.alert-success', 'Creación correcta.')
  });

  it('Delete a category', function(browser) {
    browser
      .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminCmsContent')
      .waitForElementPresent('#desc-cms_category-new', 5000)
      .click("td.text-right > div > div > button:nth-of-type(1)")
      .waitForElementVisible('td.text-right > div > div > ul > li:nth-child(3) > a', 3000)
      .click('td.text-right > div > div > ul > li:nth-child(3) > a')
      .pause(1000)
      .acceptAlert()
      .waitForElementPresent('.alert.alert-success', 5000)
      .verify.containsText('.alert.alert-success', 'Eliminación correcta.')
  });

  it('Create a new page', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminCmsContent&addcms')
       .waitForElementPresent('.btn.btn-continue', 5000)
       .click('.btn.btn-continue')
       .waitForElementPresent('#name_1', 5000)
       .setValue('#name_1', 'Test2')
       .setValue('#meta_description_1', 'Test2')
       .setValue('.tagify-container > input', "Test\uE007")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)")
       .waitForElementVisible('#cms_form_submit_btn', 5000)
       .click("#cms_form_submit_btn")
       .waitForElementPresent('.alert.alert-success', 5000)
       .verify.containsText('.alert.alert-success', 'Actualización correcta.')
   });

   it('Create image setting', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminImages')
       .waitForElementPresent('#desc-image_type-new', 5000)
       .click("#desc-image_type-new")
       .waitForElementVisible('#name', 5000)
       .setValue('#name', 'Test name')
       .setValue('#width', '100')
       .setValue('#height', '100')
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(4) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(5) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(6) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)")
       .waitForElementPresent('#image_type_form_submit_btn', 5000)
       .click("#image_type_form_submit_btn")
       .waitForElementPresent('.alert.alert-success', 5000)
       .verify.containsText('.alert.alert-success', 'Creación correcta.')
   });

   it('Try create existing image setting', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminImages')
       .waitForElementPresent('#desc-image_type-new', 5000)
       .click("#desc-image_type-new")
       .waitForElementVisible('#name', 5000)
       .setValue('#name', 'Test name')
       .setValue('#width', '100')
       .setValue('#height', '100')
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(4) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(5) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(6) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)")
       .click("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)")
       .waitForElementPresent('#image_type_form_submit_btn', 5000)
       .click("#image_type_form_submit_btn")
       .waitForElementPresent('.alert.alert-danger', 5000)
       .verify.containsText('.alert.alert-danger', 'Este nombre ya existe.')
       .waitForElementPresent('.alert.alert-warning', 5000)
       .verify.containsText('.alert.alert-warning', 'Después de la modificación, no olvides regenerar las miniaturas')
   });

   it('Delete a image setting', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminImages')
       .waitForElementPresent('#desc-image_type-new', 5000)
       .waitForElementVisible('tr:last-child > td.text-right > div > div > button:last-of-type', 5000)
       .click('tr:last-child > td.text-right > div > div > button:last-of-type')
       .pause(1000)
       .click("tr:last-child > td.text-right > div > div > ul > li > a")
       .acceptAlert()
       .waitForElementPresent('.alert.alert-success', 5000)
       .verify.containsText('.alert.alert-success', 'Eliminación correcta.')
   });

   it('Create link widget', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminLinkWidget')
       .waitForElementPresent('.process-icon-new', 5000)
       .click(".process-icon-new")
       .waitForElementVisible('#name_1', 5000)
       .setValue('#name_1', 'Test')
       .setValue('input[name="custom[1][1][title]', 'Test Title')
       .setValue('input[name="custom[1][1][url]', 'Test url')
       .setValue('input[name="custom[2][1][title]', 'Test Title')
       .setValue('input[name="custom[2][1][url]', 'Test url')
       .click("#configuration_form_submit_btn")
       .waitForElementPresent('.alt_row.row_hover:last-child > td:nth-child(3)')
       .verify.containsText('.alt_row.row_hover:last-child > td:nth-child(3)', 'Test')
   });

   it('Deletes link widget', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7/index.php?controller=AdminLinkWidget')
       .waitForElementPresent('.alt_row.row_hover:last-child > td > div > div > button', 5000)
       .click(".alt_row.row_hover:last-child > td > div > div > button")
       .pause(1000)
       .click(".alt_row.row_hover:last-child > td  > div > div > ul > li > a")
   });

   it('Logout', function(browser) {
     browser
       .url('http://localhost:8888/prestashop/admin727jfmfc7')
       .waitForElementPresent('#employee_infos', 5000)
       .click("#employee_infos")
       .waitForElementPresent('#header_logout', 5000)
       .click("#header_logout")
       .verify.visible("#submit_login")
   });
});
