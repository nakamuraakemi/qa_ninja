Dado('que acesso a página de cadastro') do
    visit("http://rocklov-web:3000/signup")
end

Quando('submeto o meu cadastro completo') do
    find('#fullName').set 'Karina Nakamura'
    find('#email').set Faker::Internet.free_email
    find('#password').set '123456'

    click_button('Cadastrar')
end

Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do 
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto o meu cadastro sem o email') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do   
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto o meu cadastro com email incorreto') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto o meu cadastro sem a senha') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do 
  pending # Write code here that turns the phrase above into concrete actions
end