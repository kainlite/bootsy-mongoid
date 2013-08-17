require 'spec_helper'

describe Bootsy::ImageGallery do
  it { should be_timestamped_document }

  it { should belong_to(:bootsy_resource) }
  it { should have_many(:images).with_dependent(:destroy) }
end