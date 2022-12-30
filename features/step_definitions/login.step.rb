# Aqui está o BDD do login no site
Dado('que o usuario queira se logar') do
    visit ''
    sleep 5
end
  
Quando('ele digitar as credenciais validas') do
    @test = LoginPage.new
    @test.userLogin
end
  
Então('deve acessar o site com sucesso') do
    @home = HomePage.new
    @home.checkLoginSuccessful
end