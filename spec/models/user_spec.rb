require 'spec_helper.rb'

describe User do
  describe "authenticate?" do
  	let (:user) { FactoryGirl.build(:user, password: 'password') }

  	it "tests that password entered matched password in db" do
  		user.authenticate?('password').should be_true
  		user.authenticate?('otherpass').should be_false
  	end
  end

end