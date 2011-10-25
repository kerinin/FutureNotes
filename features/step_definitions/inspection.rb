Then "I should see '$selector'" do |selector|
  assert page.should have_selector( selector )
end

Then "I should see the text '$text'" do |text|
  assert page.should have_content( text )
end

Then "I should not see '$selector'" do |selector|
  assert page.should have_no_selector( selector )
end

Then "I should not see the text '$text'" do |text|
  assert page.should have_no_content( text )
end
