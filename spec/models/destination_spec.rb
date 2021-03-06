require 'spec_helper'

describe Destination, :type => :model do
  it { should validate_presence_of(:name) }
  it { should has_many(:to_do_items)}
end
