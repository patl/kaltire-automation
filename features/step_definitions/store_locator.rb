Then(/^press on Locator from header$/) do
  sleep (5)
  @browser.element(:xpath, "//ul[@id='mainNav']/li[4]/a/span").click
end

Then(/^verify the elements on Store locator page$/) do
  @browser.element(:css, "h1.page-title").text == "FIND A LOCATION"

end

Then(/^press on List o fall Locations$/) do
  sleep(2)
  @browser.element(:xpath, "html/body/div[1]/div[4]/div/div/div[1]/div/a").click

end

And(/^verify that you are on All List location$/) do
  @browser.element(:css, "h1.page-title").text == 'KAL TIRE - ALL LOCATIONS'
end

And(/^verify that Alberta is expended$/) do
  @browser.element(:link, "Alberta").text == "ALBERTA"

end

And(/^check that other states are colapsing and exists$/) do
  @browser.element(:link, "Ontario").text == 'ONTARIO'
  @browser.element(:link, "Manitoba").text == 'MANITOBA'
  @browser.element(:link, "British Columbia").text == 'BRITISH COLUMBIA'
  @browser.element(:link, "Saskatchewan").text == 'SASKATCHEWAN'
  @browser.element(:link, "Quebec").text == 'QUEBEC'

  #@browser.find_element(:link, "#049 100 Mile House Store")

  #@browser.find_element(:link, "#049 100 Mile House Store")

end
And(/^navigate back to Location page$/) do
  sleep (2)
  @browser.element(:xpath, "html/body/div[1]/div[4]/div/div/div[1]/div/a[2]").click


end


And(/^search for Alberta$/) do
  @browser.element(:id, "start_location").send_keys "Alberta, Canada"
  @browser.element(:css, 'button.button.small').wait_until_present.click
  end

And(/^verify that Alberta is disaplyed$/) do
  @browser.element(:css, "div.location-item").text == "Kal Tire - #610 EDSON STORE\n5959 3RD AVENUE\nEDSON, AB T7E 1R8\n(780) 712-7540\nDistance: 65km"
end

Then(/^press on Alberta store and veify that pop\-up is disaplyed on the map$/) do
  @browser.element(:xpath, "//div[@id='iam-sl-list-view-items']/div/div/div[2]/p[3]").wait_until_present.click
  @browser.div(:class, "map-infobox").display
end

And(/^Navigate to Store Detail page$/) do
   @browser.element(:xpath, ".//*[@id='iam-sl-map-canvas']/div/div/div[1]/div[4]/div[4]/div/div/div/p[2]/a").wait_until_present.click

end


And(/^verify that Lcoation detail page is disaplyed$/) do
  @browser.element(:css, "h1.page-title").display
end


Then(/^navigate back to Location page from details$/) do
  @browser.element(:xpath, 'html/body/div[2]/div[4]/div/div/div/div[1]/div/a[2]').click
end