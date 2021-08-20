feature 'Homepage Functionality' do
    scenario 'user clicks on the homepage' do
      visit ('/')
      expect(page).to have_content('J-CRAB')
    end
  end

  # feature 'Homepage Functionality' do
  #   scenario 'clicks on view spaces and goes to spaces page' do
  #     visit ('/')
  #     click_button('View our Spaces')
  #     expect(page).to have_content('Spaces')
  #   end
  # end

#  feature 'View listing of spaces' do
#    scenario 'A User can see a list of Spaces' do
#      visit ('/')
#      click_button('View our Spaces')
#     expect(page).to have_content"These are the current rooms"
#    end
#   end
  

 feature 'Adding a Space button' do
  scenario 'Allows User to add a space with button' do
    visit ('/spaces')
    click_button('Add a Space')
    expect(page).to have_content('Add a Space')
  end

end
 feature 'Requests' do
  scenario "users can request a space" do
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab BnB Original, J-Crab island')
    click_button('Submit')
    visit ('/spaces')
    click_button("Request to book a Space")
    expect(page).to have_content('requesting')


  end
end  
feature 'Input Name of space' do
  scenario "user can input and submit name of space" do
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab BnB Original, J-Crab island')
    click_button('Submit')
    expect(page).to have_content('J-Crab BnB Original, J-Crab island')
  end
end
feature 'list spaces' do
  scenario "user can see a list of spaces on the spaces page" do
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab BnB Original, J-Crab island')
    click_button('Submit')
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab2 BnB Original, J-Crab island')
    click_button('Submit')
    
    expect(page).to have_content('J-Crab BnB Original, J-Crab island')
    expect(page).to have_content('J-Crab2 BnB Original, J-Crab island')
  end
end
 
feature 'user can add details to spaces creation' do
  scenario "user can add available dates and price to add spaces" do
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab3 BnB Original, J-Crab island')
    click_button('Submit')
    visit ('/addspaces')
    fill_in('inputspacetextbox', with: 'J-Crab4 BnB Original, J-Crab island')
    fill_in('inputpricetextbox', with: '25')
    fill_in('availablefrom', with: '01/09/2021')
    fill_in('availableto', with: '30/09/2021') 
    click_button('Submit')
    expect(page).to have_content('J-Crab3 BnB Original, J-Crab island')
    expect(page).to have_content('J-Crab4 BnB Original, J-Crab island')
  end
end

