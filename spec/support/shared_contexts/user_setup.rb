RSpec.shared_context "user setup" do
  let(:user) { User.create(email: 'eddie@5xcampus.com', password: '12345678') }
end
