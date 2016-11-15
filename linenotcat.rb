class Linenotcat < Formula
  desc 'A command line tool to send messages to LINE Notify'
  homepage 'https://github.com/moznion/linenotcat'
  version '0.1.0'

  if Hardware::CPU.is_64_bit?
    url 'https://github.com/moznion/linenotcat/releases/download/0.1.0/linenotcat_darwin_amd64_0.1.0'
    sha256 '627e8c8d179a3e981151b97df9bc072d49d299019a7bdc7382c33ffefe3c2026'
  else
    url 'https://github.com/moznion/linenotcat/releases/download/0.1.0/linenotcat_darwin_386_0.1.0'
    sha256 'c8b420e26dac01a2190163b25f8902a686b6759db16c831b13de0db0084b78c6'
  end

  def install
    if Hardware::CPU.is_64_bit?
      mv 'linenotcat_darwin_amd64_0.1.0', 'linenotcat'
    else
      mv 'linenotcat_darwin_386_0.1.0', 'linenotcat'
    end

    bin.install 'linenotcat'
  end

  test do
    system 'false'
  end
end
