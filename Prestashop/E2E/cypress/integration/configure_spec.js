describe('Prestashop configuración general de parametros de la tienda', function() {

    beforeEach(function() {
      cy.server();
      cy.route('/admin250idgu1f/*').as('getHome');
      cy.visit('http://localhost/admin250idgu1f/');
      cy.get('#email').click().type("jwsanabria@gmail.com");
      cy.get('#passwd').click().type("presta1234");
      cy.get('#stay_logged_in').check();
      cy.get('#submit_login').click();
      cy.wait('@getHome');
    })

    beforeEach(function() {
      Cypress.Cookies.preserveOnce("PHPSESSID","PrestaShop-92ba3b5255df0fb2ad8c799f90c01b8d")
    })

    it('Configuración general', function() {
      cy.get("#subtab-ShopParameters").click();
      cy.get("#subtab-AdminParentPreferences").click();
      
      cy.get("#form_general_price_display_precision").clear()
      cy.get("#form_general_price_display_precision").click().type("0");
      cy.get('#form_general_shop_activity').select('Carros')
      cy.get('.btn-primary').contains('Guardar').click()
      cy.contains('Actualización correcta.')
    })

    it('Configuración de pedidos', function() {
      cy.get("#subtab-ShopParameters").click();
      cy.get("#subtab-AdminParentOrderPreferences").click();
      
      cy.get("#PS_FINAL_SUMMARY_ENABLED_on").check({force: true})
      cy.get('#PS_GIFT_WRAPPING_TAX_RULES_GROUP').select('CO Standard Rate (19%)')
      cy.get('button[name="submitOptionsconfiguration"]').click({ multiple: true, force:true } )
      cy.contains('La configuración ha sido actualizada correctamente.')
    })

    it('Configuración de productos', function() {
      cy.get("#subtab-ShopParameters").click();
      cy.get("#subtab-AdminPPreferences").click();
      cy.get("#form_general_new_days_number").clear();
      cy.get("#form_general_new_days_number").click().type("30");
      cy.get("#form_general_short_description_limit").clear();
      cy.get("#form_general_short_description_limit").click().type("500");
      cy.get("#form_page_display_last_quantities").clear();
      cy.get("#form_page_display_last_quantities").click().type("5");
      cy.get("#form_pagination_products_per_page").clear();
      cy.get("#form_pagination_products_per_page").click().type("20");
      cy.get('#form_pagination_default_order_by').select('Product price')
      cy.get('.btn-primary').contains('Guardar').click({ multiple: true, force:true })
      cy.contains('Actualización exitosa')
    })

    it('Ajustes sobre clientes', function() {
      cy.get("#subtab-ShopParameters").click();
      cy.get("#subtab-AdminParentCustomerPreferences").click();
      cy.get("#form_general_redisplay_cart_at_login_1").check({force: true})
      cy.get("#form_general_password_reset_delay").clear();
      cy.get("#form_general_password_reset_delay").click().type("180");
      cy.get('.btn-primary').contains('Guardar').click({ multiple: true, force:true })
      cy.contains('Actualización exitosa')
    })

    it('Contactos - Agregar tienda', function() {
      cy.get("#subtab-ShopParameters").click();
      cy.get("#subtab-AdminParentStores").click();
      cy.get("#subtab-AdminStores").click();
      cy.get("#page-header-desc-store-new_store").click();
      cy.get("#name_1").clear();
      cy.get("#name_1").click().type("Tienda Bogota");
      cy.get("#address1_1").clear();
      cy.get("#address1_1").click().type("Cra 30 #45-98");
      cy.get("#city").clear();
      cy.get("#city").click().type("Bogota");
      cy.get("#latitude").clear();
      cy.get("#latitude").click().type("105.8");
      cy.get("#longitude").clear();
      cy.get("#longitude").click().type("105.0");
      cy.get("#postcode").clear();
      cy.get("#postcode").click().type("105066");
      cy.get('#id_state').select('Distrito Capital')
      cy.get("#active_off").check({force: true})
      cy.get("#store_form_submit_btn").click();
      cy.contains('Creación correcta.')
    })
})