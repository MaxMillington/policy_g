class User < ActiveRecord::Base

  validates :username, presence: true,
            uniqueness: { case_sensitive: false }
  has_secure_password


  def suggested_life_insurance
    10 * total_annual_income * (1 - 0.3) - (savings + saved_for_retirement)
  end

end