Then(/^press on account setting from my account page$/) do
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[1]/div/div/div/div[1]/div/nav/div/div[2]/ul/li[2]/a").wait_until_present.click
end

And(/^press on Edit for password$/) do
  @browser.link(:text, "(Edit)").wait_until_present.click
end

And(/^fill the form with new password$/) do

  @browser.text_field(:xpath, "//form[@id='ChangePassowrdForm']/fieldset/div/div/input").send_keys (@pass)
  @browser.text_field(:xpath, "//form[@id='ChangePassowrdForm']/fieldset/div[2]/div/input").send_keys (@pass1)
  @browser.text_field(:xpath, "//div[3]/div/input").send_keys (@pass1)


end

And(/^Save cahnges$/) do
  @browser.button(:name, "dwfrm_profile_changepassword").wait_until_present.click
end

And(/^Log in with new password$/) do
  @browser.text_field(:id, "dwfrm_login_username").send_keys (@email+'@'+'gmail.com')
  @browser.text_field(:id, "dwfrm_login_password").send_keys (@pass1)
  @browser.button(:name, "dwfrm_login_login").wait_until_present.click
end