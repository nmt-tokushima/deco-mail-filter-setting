json.extract! @setting,
  :bcc_conversion,
  :bcc_dummy_to,
  :attachments_encryption,
  :attachments_encryption_password_length,
  :attachments_encryption_subtitle,
  :attachments_encryption_additional_text,
  :attachments_encryption_encoding,
  :attachments_encryption_password_notification
json.bcc_conversion_disable_domains @setting.bcc_conversion_disable_domains.map(&:domain)
json.attachments_encryption_disable_emails @setting.attachments_encryption_disable_emails.map(&:email)
json.attachments_encryption_disable_domain_froms @setting.attachments_encryption_disable_domain_froms.map(&:domain)
json.attachments_encryption_disable_domain_tos @setting.attachments_encryption_disable_domain_tos.map(&:domain)
