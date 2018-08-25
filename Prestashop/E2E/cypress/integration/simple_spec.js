describe('Prestashop customize options', function() {

    before(function() {
      cy.server();
      cy.route('/prestashop/admin917alipjd/*').as('getHome');
      cy.visit('http://localhost:8888/prestashop/admin917alipjd');
      cy.get('#email').click().type("wr.ravelo@uniandes.edu.co");
      cy.get('#passwd').click().type("pruebasautomaticas");
      cy.get('#stay_logged_in').check();
      cy.get('#submit_login').click();
      cy.wait('@getHome');
    })

    beforeEach(function() {
      Cypress.Cookies.preserveOnce("PHPSESSID","PrestaShop-92ba3b5255df0fb2ad8c799f90c01b8d")
    })

    it('Creates a new category', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminCmsContent").click();
      cy.get("#desc-cms_category-new").click();
      cy.get("#name_1").click().type("Test");
      cy.get("#description_1").click().type("Test");
      cy.get("#meta_title_1").click().type("Test");
      cy.get("#meta_description_1").click().type("Test");
      cy.get("#meta_keywords_1").click().type("Test");
      cy.get("#cms_category_form_submit_btn").click()
      cy.contains('Creación correcta.')
    })

    it('Deletes first category', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminCmsContent").click();
      cy.get("#table-cms_category").find(".btn-group.pull-right").first().find(".btn.btn-default.dropdown-toggle").click();
      cy.get("#table-cms_category").find(".btn-group.pull-right.open").first().find(".dropdown-menu").find(".delete").click()
      cy.contains('Eliminación correcta.');
    })

    it('Creates a new page', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminCmsContent").click();
      cy.get("#desc-cms-new").click();
      cy.get("#name_1").click().type("Test2");
      cy.get("#meta_description_1").click().type("Test");
      cy.get(".tagify-container").find("input").first().click().type("Test{enter}");
      cy.get(".mce-edit-area.mce-container.mce-panel.mce-last.mce-stack-layout-item").first().click().type("Test text");
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)").click();
      cy.get("#cms_form_submit_btn").click();
      cy.contains('Actualización correcta.');
    })

    it('Deletes first page', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminCmsContent").click();
      cy.get("#table-cms").find(".btn-group.pull-right").first().find(".btn.btn-default.dropdown-toggle").click();
      cy.get("#table-cms").find(".btn-group.pull-right.open").first().find(".dropdown-menu").find(".delete").click();
      cy.contains('Eliminación correcta.');
    })

    it('Create image setting', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminImages").click();
      cy.get("#desc-image_type-new").click();
      cy.get("#name").click().type("Test name");
      cy.get("#width").click().type("100");
      cy.get("#height").click().type("100");
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(4) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(5) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(6) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)").click();
      cy.get("#image_type_form_submit_btn").click();
      cy.contains('Creación correcta.');
    })

    it('Try create existing image setting', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminImages").click();
      cy.get("#desc-image_type-new").click();
      cy.get("#name").click().type("Test name");
      cy.get("#width").click().type("100");
      cy.get("#height").click().type("100");
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(4) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(5) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(6) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(7) > div > span > label:nth-child(2)").click();
      cy.get("#fieldset_0 > div.form-wrapper > div:nth-child(8) > div > span > label:nth-child(2)").click();
      cy.get("#image_type_form_submit_btn").click();
      cy.contains('Este nombre ya existe.');
      cy.contains('Después de la modificación, no olvides regenerar las miniaturas');
    })

    it('Delete an image setting', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminImages").click();
      cy.get("#table-image_type").find(".btn-group.pull-right").last().find(".btn.btn-default.dropdown-toggle").click();
      cy.get("#table-image_type").find(".btn-group.pull-right.open").last().find(".dropdown-menu").find(".delete").click();
      cy.contains('Eliminación correcta.');
    })

    it('Create link widget', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminLinkWidget").click();
      cy.get(".process-icon-new").click();
      cy.get("#name_1").click().type("Test");
      cy.get('input[name="checkme"]').check({multiple: true})
      cy.get('input[name="custom[1][1][title]"]').click().type("Test Title")
      cy.get('input[name="custom[1][1][url]"]').click().type("Test url")
      cy.get('input[name="custom[2][1][title]"]').click().type("Test Title")
      cy.get('input[name="custom[2][1][url]"]').click().type("Test url")
      cy.get('#configuration_form_submit_btn').click()
      cy.contains('Test');
    })

    it('Deletes link widget', function() {
      cy.get("#subtab-AdminParentThemes").click();
      cy.get("#subtab-AdminLinkWidget").click();
      cy.get(".table.tableDnD.cms").find(".btn-group.pull-right").last().find(".btn.btn-default.dropdown-toggle").click();
      cy.get(".table.tableDnD.cms").find(".btn-group.pull-right.open").last().contains("Eliminar").click();
    })

    it('Log Out', function() {
      cy.get("#employee_infos").click();
      cy.get("#header_logout").click();
      cy.contains("Iniciar sesión")
    })
})
