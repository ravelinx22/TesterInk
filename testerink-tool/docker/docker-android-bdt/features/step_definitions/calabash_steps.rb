require 'calabash-android/calabash_steps'

Then(/^I hide my keyboard$/) do
  hide_soft_keyboard()
end

Then(/^I take a screenshot of the phone$/) do
  date = Time.now.to_f
  image_name = "#{date}".tr(".","")
  screenshot_embed({:prefix => "./reports/", :name=> image_name, :label => "Screenshot"})
end
