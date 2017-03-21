Then(/^press on Shop Tires By Vehicle tab$/) do


  @browser.element(:css, "div.selector-tab").when_present.click
  sleep(1)
  end

Then(/^select year$/) do
  @browser.element(:xpath, "(//a[contains(text(),"+(@year)+")])[4]").click
  end
Then(/^select year for tires by vehicle$/) do
  @browser.element(:xpath, "(//a[contains(text(),"+(@year)+")])[2]").click
end
Then(/^select Make$/) do
  sleep(1)
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[4]/div[2]/div/ul/li/div/ul["+(@make_column)+"]/li[" +(@make_row)+"]/a").click
  sleep(2)
  selected_make = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[1]/div[2]/a").text
  @selected_make =selected_make
 end

Then(/^select Model$/) do

      begin
        model = @browser.element(:text, "Model").visible?
        if model == true
          @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[4]/div[3]/div/ul/li/div/ul[1]/li[1]/a").click
        else
          puts 'nothing select'
        end
      rescue Selenium::WebDriver::Error::NoSuchElementError

      end
      selected_model = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[1]/div[3]/a").text
      @selected_model =  selected_model
      selected_option = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[1]/div[5]/a").text
      @selected_option = selected_option
end

And(/^select options$/) do
  sleep (1)
    begin
      option = @browser.element(:link_text, "Option").present?
      if option == true
        sleep (1)
        @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[4]/div[5]/div/ul/li/div/ul/li/a").click
        selected_option = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[1]/div[5]/a").text
        @selected_option = selected_option
      else
        puts 'nothing select'
      end
    rescue Selenium::WebDriver::Error::NoSuchElementError
    end

end

And (/^select size$/) do
  sleep (1)
  begin
    size = @browser.element(:link_text, "Size").present?
    if size == true
      sleep (1)
      @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[3]/div[4]/div[6]/div/ul/li[1]/a")
          else
      puts 'nothing select'
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError
  end
end

Then(/^verify that searched page is displayed$/) do
  sleep (2)
   @browser.element(:css, ".psresults-title").text == "SELECT TIRE CATEGORY"
end

And(/^verify searching car by Year and Make$/) do

  p @year
  p @selected_make
  p @selected_model
  p @selected_option
  @browser.element(:css, ".sel-title").text.include? @year + " " + @selected_make + " " + @selected_model+ " " + @selected_option
end



#Tires
Then(/^navigate to Shop tires by size$/) do

    @browser.element(:xpath, 'html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[2]/div[2]').when_present.click
end

Then(/^Select tires width$/) do
     @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[4]/div[1]/div/ul/li/div/ul["+(@tire_width_column)+"]/li["+(@tire_width_row)+"]/a").click
   @tires_width = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[2]/div[1]/a").text
end


Then(/^select tires profile$/) do
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[4]/div[2]/div/ul/li/div/ul[1]/li["+(@tire_width_column)+"]/a").click
  @tires_profile = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[2]/div[2]/a").text
end

Then(/^select diameter$/) do
  begin
    diameter = @browser.element(:link_text, "Diameter").visible?
    if diameter == true
      @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[4]/div[3]/div/ul/li/div/ul/li[1]/a").click
    else
      puts 'nothing select'
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError

  end
  

end

And(/^Check how to find your size pop\-up$/) do
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[1]/ul/li/div/div[6]/div[5]/a").click
  @browser.button(:class,"close-button").click
end

And(/^Verify selected tires width$/) do
  @browser.element(:css, ".sel-subtitle").text.include? @tires_width + "/" + @tires_profile
end

Then(/^navigate to wheels tab from widget$/) do
  sleep (2)
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/div/div/div[2]").click
end

Then(/^press on shop wheels by vehicle$/) do
  sleep (2)
   @browser.element(:xpath, 'html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[2]/div[1]').click
end



Then(/^select Make for wheels by vehicle$/) do

  sleep(2)
  @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[4]/div[2]/div/ul/li[1]/div/ul["+(@make_column)+"]/li[" +(@make_row)+"]/a").click
  sleep(2)
  selected_make = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[1]/div[2]/a").text
  @selected_make =selected_make
end

Then(/^select model for wheels by vehicle$/) do
  sleep (1)
  begin
    model = @browser.element(:xpath, "(//a[contains(text(),'Model')])[3]").visible?
    if model == true
      sleep(3)
      @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[4]/div[3]/div/ul/li/div/ul[1]/li[1]/a").click
    else
      puts 'nothing select'
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError

  end

  selected_model = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[1]/div[3]/a").text
  @selected_model =  selected_model
  selected_option = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[1]/div[5]/a").text
  @selected_option = selected_option
end

Then(/^select option for wheels by vehicle$/) do
  sleep (2)
  begin
    option = @browser.element(:xpath, "(//a[contains(text(),'Option')])[2]").present?
    if option == true
      sleep (2)
      @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[4]/div[5]/div/ul/li/div/ul/li[1]/a").click
      selected_option = @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[4]/div[5]/div/ul/li/div/ul/li[1]/a").text
      @selected_option = selected_option
    else
      puts 'nothing select'
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError
  end
end

Then(/^select size for wheels by vehicle$/) do
  sleep (1)
  begin
    size = @browser.element(:xpath, "(//a[contains(text(),'Size')])[6]").present?
    if size == true
      sleep (1)
      homologated = @browser.element(:class, "oemarkingModalCta").present?
      if homologated ==true
        @browser.element(:xpath, 'html/body/div[2]/div/div/a[2]').click
      else
        puts 'nothing select'
      end
      @browser.element(:xpath, "html/body/div[1]/div[4]/div[2]/div[2]/div/div/div[2]/div/ul/li[2]/ul/li/div/div[3]/div[4]/div[6]/div/ul/li[1]/a").click
    else
      puts 'nothing select'
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError
  end
end

And(/^verify that CLP is open$/) do
  @browser.element(:class, 'page-title').text =='SHOP WHEELS' || "SEARCH RESULTS"
end

And(/^verify searching car by Year and Make for wheels$/) do
  begin
  if @browser.element(:class, 'page-title').text =='SHOP WHEELS'
    then @browser.element(:css, ".sel-title").text.include? @year + " " + @selected_make + " " + @selected_model+ " " + @selected_option
  else
    p 'you are on no result page'
  end
  rescue Selenium::WebDriver::Error::NoSuchElementError
end
end

