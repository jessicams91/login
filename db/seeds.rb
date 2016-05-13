FactoryGirl.create_list(:user, 5)
FactoryGirl.create(:user, email: 'blocked@email.com', wrong_login_count: 5)
