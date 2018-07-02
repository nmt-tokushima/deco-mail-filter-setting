class Setting < ApplicationRecord
  has_many :bcc_conversion_disable_domains, dependent: :destroy
  has_many :attachments_encryption_disable_emails, dependent: :destroy
  has_many :attachments_encryption_disable_domain_froms, dependent: :destroy
  has_many :attachments_encryption_disable_domain_tos, dependent: :destroy

  def self.current
    if count == 0
      create_dummy
    else
      first
    end
  end

  def self.create_dummy
    instance = new attachments_encryption_additional_text: ''
    instance.save!
    instance
  end
end
