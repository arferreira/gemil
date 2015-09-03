class Person < ActiveRecord::Base
	 mount_uploader :imagem, RetratoUploader
end
