#require 'selenium-webdriver'

require 'cucumber'
require 'rspec'
#require "webdrivers"
require 'watir'
require 'selenium-webdriver'

Given(/^open the site$/) do
 # br = :edge


  @browser = Watir::Browser.new :ff

      @browser.window.maximize
  #@browser.goto 'https://storefront:kt2017@development-store-kaltire.demandware.net/s/Kaltire/home'
  @browser.goto 'https://staging-store-kaltire.demandware.net/s/Kaltire/home'
begin
  alert = @browser.alert.exists?
  if alert == true
    @browser.alert.ok
  else
    p 'no alert'
  end
end
sleep(5)


  year = [('1980'..'2017')].map { |i| i.to_a }.flatten
  @year = (0..0).map { year[rand(year.length)] }.join

  make_column = [('1'..'5')].map { |i| i.to_a }.flatten
  @make_column = (0..0).map { make_column[rand(make_column.length)] }.join

  make_row = [('1'..'7')].map { |i| i.to_a }.flatten
  @make_row = (0..0).map { make_row[rand(make_row.length)] }.join

  tire_width_column = [('1'..'2')].map { |i| i.to_a }.flatten
  @tire_width_column = (0..0).map { tire_width_column[rand(tire_width_column.length)] }.join

  tire_width_row = [('1'..'9')].map { |i| i.to_a }.flatten
  @tire_width_row = (0..0).map { tire_width_row[rand(tire_width_row.length)] }.join

end

When(/^user press on Log in from header$/) do
  @browser.link(:text, "Sign in").click

end

Then(/^user press on create account button$/) do
  @browser.button(:name, "dwfrm_login_register").wait_until_present.click


end

And(/^fill the form with valid data$/) do
  #Generate random pass/email
  o = [('a'..'z')].map { |i| i.to_a }.flatten
  @name1 = (0...5).map { o[rand(o.length)] }.join
  @name2 = (0...5).map { o[rand(o.length)] }.join
@email = (0...5).map { o[rand(o.length)] }.join
  @pass = (0...10).map { o[rand(o.length)] }.join
  @pass1 = (0...10).map { o[rand(o.length)] }.join

  #fill reg form
  @browser.text_field(:id, "dwfrm_profile_customer_firstname").send_keys(@name1)
  @browser.text_field(:id, "dwfrm_profile_customer_lastname").send_keys (@name2)
  @browser.text_field(:id, "dwfrm_profile_customer_email").send_keys (@email+'@'+'gmail.com')
  @browser.text_field(:id, "dwfrm_profile_login_password").clear
  @browser.text_field(:id, "dwfrm_profile_login_password").send_keys (@pass)
  @browser.text_field(:id, "dwfrm_profile_login_passwordconfirm").send_keys (@pass)
  @browser.button(:name, "dwfrm_profile_confirm").when_present.click
end

Then(/^press on Log Out$/) do
    @browser.element(:css, ".link>a").click

end

And(/^close the browser$/) do
  @browser.close
end