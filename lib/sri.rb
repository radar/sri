require "sri/version"
require "openssl"

module SRI
  def self.from_file(file)
    generate_hash(File.read(File.expand_path(file)))
  end

  def self.generate_hash(content)
    digest = OpenSSL::Digest::SHA512.new
    digest << content
    digest.base64digest
  end
end
