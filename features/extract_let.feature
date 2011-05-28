Feature: Extract RSpec Let :RExtractLet
  Take an assignment in an rspec specfication and convert it into a let declaration

  Scenario: Extract to rspec let declaration
    Given I have the following code:
    """
    describe "something" do
      it "does stuff" do
        bar = 10
        bar.should == 10
      end
    end
    """
    When I select the variable assignment and execute:
    """
    :RExtractLet
    """
    Then I should see:
    """
    describe "something" do
      let(:bar) { 10 }
      it "does stuff" do
        bar.should == 10
      end
    end

    """
