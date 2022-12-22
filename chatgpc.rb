class Chatgpc < Formula
    include Language::Python::Virtualenv

    desc "A natural language command line interface powered by chatgpc"
    homepage "https://github.com/pdw207/chatgpc-cli"
    url "https://github.com/pdw207/chatgpc-cli/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "d51fe28beb653cdd06e672c20e3a1a3178d7a9312fcaf69c44f9cd82bf0274a8"
    license "MIT"

    depends_on "python@3.10"

    def install
      virtualenv_install_with_resources
    end

    test do
      system "#{bin}/chatgpc", "--version"
    end
end
