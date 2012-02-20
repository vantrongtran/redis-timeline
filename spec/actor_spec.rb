require File.join(File.dirname(__FILE__), %w[spec_helper])

class User
  include Timeline::Actor
end

describe Timeline::Actor do
  describe "when included" do
    before { @user = User.new }

    it "defines a timeline association" do
      @user.should respond_to :timeline
    end
  end
end