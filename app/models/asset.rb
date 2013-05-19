class Asset < ActiveRecord::Base
  attr_accessible :user_id, :uploaded_file

  belongs_to :user 

  has_attached_file :uploaded_file

  validate_attachment_size :uploaded_file, less_than: 10.megabytes
  validate_attachment_presense :uploaded_file

end