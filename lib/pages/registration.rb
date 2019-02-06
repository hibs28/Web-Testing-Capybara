require 'capybara/dsl' # Sub-directory of capybara

class Registration
  include Capybara::DSL

  # Page Objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  DOB_NAME_FIELD = 'dob'
  GENDER_BUTTON_ID = 'customRadioInline2'
  UNIVERSITY_SELECTION_BOX = 'inputUni'
  ADDRESS_LINE_ONE_FIELD_ID = 'inputAddress'
  ADDRESS_LINE_TWO_FIELD_ID = 'inputAddress2'
  CITY_FIELD_ID = 'inputCity'
  COUNTY_SELECTION_BOX = 'inputCounty'
  POSTCODE_FIELD_ID = 'inputPostcode'
  EMAIL_FIELD_ID = 'inputemailaddress'
  SKILLS_FIELD_ID = 'exampleFormControlTextarea1'
  PHONE_NUMBER_FIELD_ID = 'exampleFormControlInput1'
  TERMS_CHECK_BOX_ID = 'terms'
  EXPERIENCE_SLIDER_ID = 'experienceSlider'

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_first_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_age_field(age)
    find(:xpath, '/html/body/div/form/div[3]/div/input').set(age)
  end

  def fill_in_dob_field(date)
    fill_in(DOB_NAME_FIELD, :with => date)
  end

  def choose_gender
    find(:xpath, '/html/body/div/form/div[6]').click
  end

  def fill_in_degree_field(degree)
    find(:xpath, '/html/body/div/form/div[7]/div/input').set(degree)
  end

  def select_university_field(university)
    select(university, :from => UNIVERSITY_SELECTION_BOX)
  end

  def fill_in_address_one_field(address)
    fill_in(ADDRESS_LINE_ONE_FIELD_ID, :with => address)
  end

  def fill_in_address_two_field(address)
    fill_in(ADDRESS_LINE_TWO_FIELD_ID, :with => address)
  end

  def fill_in_city_field(city)
    fill_in(CITY_FIELD_ID, :with => city)
  end

  def select_county_field(county)
    select(county, :from => COUNTY_SELECTION_BOX)
  end

  def fill_in_postcode_field(postcode)
    fill_in(POSTCODE_FIELD_ID, :with => postcode)
  end

  def fill_in_email_field(email)
    fill_in(EMAIL_FIELD_ID, :with => email)
  end
  
  def fill_in_skills_field(skill)
    fill_in(SKILLS_FIELD_ID, :with => skill)
  end

  def fill_in_phone_number_field(number)
    fill_in(PHONE_NUMBER_FIELD_ID, :with => number)
  end

  def fill_in_linkedin_field(url)
    find(:xpath, '/html/body/div/form/div[17]/div/input').set(url)
  end
  
  def choose_stream
    find(:xpath, '/html/body/div/form/div[20]/div[2]').click
  end

  def check_agree_terms_box
    check(TERMS_CHECK_BOX_ID)
  end

  def change_experience_slider_value(number)
    fill_in(EXPERIENCE_SLIDER_ID, :with => number)
  end

  def click_submit_button
    find(:xpath, '/html/body/div/form/button').click
  end
end