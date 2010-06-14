require 'spec_helper'

shared_examples_for 'it is not burning man' do
  it 'should return false' do
    is_it_burning_man?.should be_false
  end
end

shared_examples_for 'it is burning man' do
  it 'should return true' do
    is_it_burning_man?.should be_true
  end
end

describe '#is_it_burning_man?' do
  context 'before burning man' do
    before do
      Date.stub!(:today).and_return(Date.parse('2010-08-29'))
    end
    
    it_should_behave_like 'it is not burning man'
  end
  
  (Date.parse('2010-08-30')..Date.parse('2010-09-06')).each do |burningman_day|
    context "On #{burningman_day}" do
      before do
          Date.stub!(:today).and_return(burningman_day)
        end

        it_should_behave_like 'it is burning man'
      end
  end
  
  context 'after burning man' do
    before do
      Date.stub(:today).and_return(Date.parse('2010-09-07'))
    end
    
    it_should_behave_like 'it is not burning man'
  end
end