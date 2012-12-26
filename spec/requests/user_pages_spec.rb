require 'spec_helper'

describe "User Pages" do
  subject { page }
  
  describe "signup page" do
    before { visit cadastro_path }   
    let(:submit) {"Crie minha conta"}
    
    describe "titulo da pagina e Cadastre-se" do
      it { should have_selector('h1', text: "Cadastre-se") }
    end
    
    describe "with no information" do
      it "should not create a user" do
        expect {click_button submit}.not_to change(User, :count)
      end
    end
        
    describe "with valid information" do
      before do
        fill_in "Nome", with: "Exemplo Usuario"
        fill_in "Email", with: "user@example.com"
        fill_in "Senha", with: "foobar"
        fill_in "Repita sua senha", with: "foobar"
      end
      
      it "should create an user" do
        expect {click_button submit}.to change(User, :count).by(1)
      end
    end
    
  end
  
  describe "profile page" do
    let(:user) {FactoryGirl.create(:user)}
    before {visit user_path(user)}
    
    it { should have_selector('h1', text: user.name) }
 #   it { should have_selector('title', text: user.name) }
  end
  
end
