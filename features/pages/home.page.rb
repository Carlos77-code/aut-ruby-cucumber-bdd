class HomePage < SitePrism::Page

    element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"
    element :navBarHome, :xpath, "//a[@class='app-aware-link  global-nav__primary-link--active global-nav__primary-link']"
    element :myIcon, :id, "ember16"

    def checkLoginSuccessful
        expect(userName.text).to eql "Carlos Antonio de Lima Fernandes"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end

end