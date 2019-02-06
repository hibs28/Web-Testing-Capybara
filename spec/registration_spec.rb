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
      @sparta_demo_site.registration_page.fill_in_address_one_field('21 London Road')
      @sparta_demo_site.registration_page.fill_in_address_two_field('studio')
      @sparta_demo_site.registration_page.fill_in_city_field('London')
      @sparta_demo_site.registration_page.select_county_field('South Yorkshire')
      @sparta_demo_site.registration_page.fill_in_postcode_field('WC1 5RZ')
      @sparta_demo_site.registration_page.fill_in_email_field('123@email.co.uk')
      @sparta_demo_site.registration_page.fill_in_skills_field('Communication, Business, Time Management')
      @sparta_demo_site.registration_page.fill_in_phone_number_field('020854727873')
      @sparta_demo_site.registration_page.fill_in_linkedin_field('https://www.linkedin.com/')
      @sparta_demo_site.registration_page.choose_stream
      @sparta_demo_site.registration_page.check_agree_terms_box
      @sparta_demo_site.registration_page.change_experience_slider_value(50)
      @sparta_demo_site.registration_page.click_submit_button
    end
  end
end