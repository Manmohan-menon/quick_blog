require 'spec_helper'

describe Post do
  describe 'validations' do
    subject(:post) { post.new } # sets the subject of this describe block
    before { post.valid? }

    [:title, :body].each do |attribute|
        it "should validate the presence of #{attribute}" do
            expect(post).to have_at_least(1).error_on(attribute)
            expect(post.errors.messages[:title]).to include "can't be blank"
        end
    end
  end
end
