require "sri/version"
require "openssl"

module SRI
  def self.generate_hash(algorithm, content)
    digest_class = case algorithm
    when "sha256"
      OpenSSL::Digest::SHA256
    when "sha384"
      OpenSSL::Digest::SHA384
    when "sha512"
      OpenSSL::Digest::SHA512
    end

    digest = digest_class.new
    digest << content
    digest.base64digest
  end
end
