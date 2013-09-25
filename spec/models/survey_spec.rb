require 'spec_helper'

describe Survey do
  it { should validate_presence_of(:content) } 
  it { should validate_presence_of(:title) } 
  it { should validate_uniqueness_of(:title) } 
  it { should have_many(:questions)}

  let(:survey) { FactoryGirl.build(:survey) }
  let(:question) { FactoryGirl.build(:question) }

  it "should raise error if it does not have at least one question" do
    expect(survey).to be_invalid
    survey.save
    expect(survey.errors.full_messages).to include("Survey does not have any questions")
    expect { survey.save }.not_to change(Survey, :count)
    expect{ survey.save! }.to raise_error
  end

  it "should not raise error if it has a question" do
    survey.questions << question
    expect{ survey.save! }.not_to raise_error
  end

end
