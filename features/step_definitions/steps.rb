
Given(/^I launched the app$/) do
  # do nothing, just wait the app launched
  sleep(10)
end

Then(/^I should see a popup$/) do
  find_element(:name,"Cancel").displayed?
  screenshot '01_lauched.png'
end

When(/^I tap cancel and log in wechat$/) do
  find_element(:name,"Cancel").click
  find_element(:name,"Log In").click
  find_element(:name,"Log in with another type of ID").click
  find_element(:xpath,"//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.EditText[1]").send_keys "liang86114"
  find_element(:xpath,"//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]").send_keys "123456"
  screenshot '02_logging.png'
  find_element(:name,"Log In").click
  find_element(:name,"No").click
end

Then(/^I should see bouch of welcome screens$/) do
  find_element(:name,"148").displayed?
  screenshot '03_welcome_1.png'
end

When(/^I swipe them in order to access main screen$/) do
  find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.Gallery[1]/android.widget.RelativeLayout[1]/android.widget.ImageView[1]").click
  find_element(:name,"694").displayed?
  screenshot '04_welcome_2.png'
  find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.Gallery[1]/android.widget.RelativeLayout[1]/android.widget.ImageView[1]").click
  find_element(:name,"Liking a Moment is easy").displayed?
  screenshot '05_welcome_3.png'
  find_element(:name,"Liking a Moment is easy").click
  find_element(:name,"WeChat 6.1").displayed?
  screenshot '06_welcome_4.png'
  find_element(:name,"WeChat 6.1").click
end

And(/^I find out Comments and create a text$/) do
  find_element(:name,"Chats").displayed?
  screenshot '07_main.png'
  find_element(:name,"Discover").click
  find_element(:name,"Moments").displayed?
  screenshot '08_discovery.png'
  find_element(:name,"Moments").click
  find_element(:name,"LangC").displayed?
  screenshot '09_comments.png'
  Appium::TouchAction.new.long_press( x: 992, y:145, count: 3).release.perform
  screenshot '10_popage.png'
  find_element(:name,"OK").click
  find_element(:id,"com.tencent.mm:id/ee").send_keys "Hello,Appium!"
  screenshot '11_creating.png'
  find_element(:name,"Send").click
end

Then(/^I should see the text content showing correct in comments$/) do
  find_element(:name,"Hello,Appium!").displayed?
  screenshot '12_displayed.png'
end

Given(/^I click the delete link$/) do
  find_element(:name,"Delete").click
end

And(/^I open comments$/) do
  find_element(:name,"Discover").click
  find_element(:name,"Moments").click
  find_element(:name,"Delete").click
  find_element(:name,"OK").click
end

Then(/^I should see the comment deleted$/) do
  begin
    checkpoint = find_element(:name,"Hello,Appium!").displayed?
  rescue
    checkpoint == false
  end
end

Then(/^I should see Login button$/) do
  find_element(:name,"登录").displayed?
  screenshot '13_login button.png'
end

When(/^I tap the login button$/) do
  find_element(:name,"登录").click
end