And(/^fill the email filed$/) do
  @browser.text_field(:id, "dwfrm_login_username").send_keys "ogboiko@gmail.com"

end

And(/^fill the password filed$/) do
  @browser.text_field(:id, "dwfrm_login_password").send_keys "ogboiko@gmail.com"
end

Then(/^press on Log in button$/) do
  @browser.button(:name, "dwfrm_login_login").click
  sleep(5)
end

And(/^open order detailed page$/) do
#  @browser.find_element(:xpath, ".//*[@id='dwfrm_orders']/ul/li[1]/div/div[1]/button").click

end