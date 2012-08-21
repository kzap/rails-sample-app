require 'spec_helper'

describe "User pages" do
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }
    let(:heading) { 'Sign up' }
    let(:page_title) { heading }    
    
    it { should have_selector 'h1', text: heading }
    it { should have_selector 'title', full_title(heading) }
  end
end
