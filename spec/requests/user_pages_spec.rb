require 'spec_helper'

describe "User Pages" do
  subject { page }
  
  describe "signup page" do
    before { visit cadastro_path }
    it { should have_selector('h1', text: "Cadastre-se") }
  end
  
end
