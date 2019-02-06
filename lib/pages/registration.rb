require 'capybara/dsl' # Sub-directory of capybara

class Registration
  include Capybara::DSL

  # Page Objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  DOB_NAME_FIELD = 'dob'
  GENDER_BUTTON_ID = 'customRadioInline2'


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

end