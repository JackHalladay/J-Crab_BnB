# in spec/features/registration_spec.rb

feature 'registration' do
    scenario 'a user can sign up' do
      
      visit '/' #removed users/new
      fill_in('email', with: 'test@example.com')
      fill_in('password', with: 'password123')
      click_button('Sign Up')
  
      expect(page).to have_content "Welcome, test@example.com"
    end
  end
  
  describe '.find' do
    it 'finds a user by ID' do
      user = User.create(email: 'test@example.com', password: 'password123')
      result = User.find(user.id)
  
      expect(result.id).to eq user.id
      expect(result.email).to eq user.email
    end
  end

  # in spec/user_spec.rb

describe '.find' do
  it 'returns nil if there is no ID given' do
    expect(User.find(nil)).to eq nil
  end
end
