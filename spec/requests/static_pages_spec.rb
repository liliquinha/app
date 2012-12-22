require 'spec_helper'

describe "StaticPages" do
  
  subject {page}
  
  describe "Home page" do
    before {visit root_path}
    it { should have_content("Entre com sua conta do Facebook, Google ou Email") }
  end
  
  describe "Help page" do
    before {visit help_path}
    it { should have_content("Ajuda")}
  end

  describe "Contact page" do
    before {visit contato_path}
    it {should have_content("Entre em Contato")}
  end
  
  describe "About page" do
    before {visit sobre_path}
    it {should have_content("Sobre nos")}
  end
end
