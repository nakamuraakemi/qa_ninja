Dado('que acesso a página de cadastro') do
  visit("http://rocklov-web:3000/signup")
end

Quando('submeto o meu cadastro completo') do

  MongoDB.new.remove_user('ka.nakamura@hotmail.com')

  find('#fullName').set 'Karina Nakamura'
  find('#email').set 'ka.nakamura@hotmail.com'
  find('#password').set '123456'

  click_button('Cadastrar')
end

Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do  
  find('#email').set 'ka.nakamura@hotmail.com'
  find('#password').set '123456'

  click_button('Cadastrar')
end

Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do 
  alert = find(".alert-dark")
  expect(alert.text).to eql "Oops. Informe seu nome completo!"
end

Quando('submeto o meu cadastro sem o email') do
  find('#fullName').set 'Karina Nakamura'  
  find('#password').set '123456'

  click_button('Cadastrar')
end

Quando('submeto o meu cadastro com email incorreto') do
  find('#fullName').set 'Karina Nakamura'
  find('#email').set 'karina*gmail.com'
  find('#password').set '123456'

  click_button('Cadastrar')
end

Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do   
  alert = find(".alert-dark")
  expect(alert.text).to eql "Oops. Informe um email válido!"
end

Quando('submeto o meu cadastro sem a senha') do
  find('#fullName').set 'Karina Nakamura'
  find('#email').set 'ka.nakamura@hotmail.com'
  
  click_button('Cadastrar')
end

Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do 
  alert = find(".alert-dark")
  expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end