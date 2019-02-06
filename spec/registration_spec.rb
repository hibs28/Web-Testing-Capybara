require 'spec_helper'

describe 'testing correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do 
    
    it 'should show correct confirmation on completion' do 
      @sparta_demo_site = SpartaDemoSite.new
      @sparta_demo_site.registration_page.visit_registration_page
      @sparta_demo_site.registration_page.fill_in_first_name_field('Hibs')
      @sparta_demo_site.registration_page.fill_in_last_name_field('Abid')
      @sparta_demo_site.registration_page.fill_in_age_field(70)
      @sparta_demo_site.registration_page.fill_in_dob_field('01/01/2000')
      @sparta_demo_site.registration_page.choose_gender
      @sparta_demo_site.registration_page.fill_in_degree_field('Computing')
      @sparta_demo_site.registration_page.select_university_field('University of Roehampton')
      sleep 10
    end
  end
end