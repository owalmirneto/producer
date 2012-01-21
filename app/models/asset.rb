class Asset < ActiveRecord::Base

  # validação de campo
  validates_presence_of :title

  # dimensões dos thumbs a ser salvo
  has_attached_file :document, :styles => {
    :medium => "300x300#",
    :thumb  => "50x50#"
  }

  validates_attachment_presence     :document
  # tamanho do file
  validates_attachment_size         :document, :less_than => 5.megabyte
  # cabeçalhos aceitos pelo paperclip
  validates_attachment_content_type :document, :content_type => %w(image/png image/jpeg image/pjpeg image/gif image/tiff)

end
