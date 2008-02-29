module ActiveResource

  class Connection

      def authorization_header
        (@site.user || @site.password ? { 'Authorization' => 'Basic ' + ["#{URI.unescape(@site.user)}:#{ @site.password}"].pack('m').delete("\r\n") } : {})
      end

  end

end
