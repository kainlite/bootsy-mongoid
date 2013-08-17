include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :image, class: Bootsy::Image do
    image_file { fixture_file_upload(File.expand_path('../../fixtures/test.jpg', __FILE__), 'image/jpeg') }
    image_gallery
  end
end