Dado('que cliquei no botão para cadastrar um novo cliente') do
  expect(@screens.home.title_home?).to be_truthy
  @screens.register.start_new_register
end
  
Quando('preencher os dados para um cadastro {string} e concluir') do |type|
  @screens.register.choose_type(type)
end
  
Então('devo visualizar a mensagem {string}') do |string|
  # pending
end