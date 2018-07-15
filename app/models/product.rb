class Product < ApplicationRecord
	
	belongs_to :category
	
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
 def self.to_csv
    attributes = %w{name category_name characteristic  photo}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |product|
        csv << attributes.map{ |attr| product.send(attr) }
      end
    end
  end

  def get_name
    "#{self.name}"
  end

  def category_name
  	"#{category.name}"
  end
end
