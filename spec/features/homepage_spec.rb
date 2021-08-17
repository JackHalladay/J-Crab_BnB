feature 'Homepage Functionality' do
    scenario 'user clicks on the homepage' do
      visit ('/')
      expect(page).to have_content('J-Crab')
    end
  end

  feature 'Homepage Functionality' do
    scenario 'clicks on view spaces and goes to spaces page' do
      visit ('/')
      click_button('View our Spaces')
      expect(page).to have_content('Spaces')
    end
  end


  end  

