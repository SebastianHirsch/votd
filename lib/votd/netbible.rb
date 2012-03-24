module Votd
  class NetBible
    # The name of the Bible Translation that this module generates
    BIBLE_VERSION = "NETBible"

    # Retrieves the JSON data from the BIBLE.ORG API gateway
    #
    # @param
    # @return [JSON] verse of the day as a JSON string
    def initialize
      netbible_data = JSON.parse(HTTParty.get("http://labs.bible.org/api/?passage=votd&type=json"))

      # use bookname from first verse -- assume votd won't span books
      bookname = netbible_data[0]["bookname"]

      # use chapter from first verse -- assume votd won't span chapters
      chapter = netbible_data[0]["chapter"]

      # loop through each verse to get the verse numbers and verse text
      verse_numbers = Array.new
      verses        = Array.new
      netbible_data.each do |verse|
        verse_numbers << verse["verse"]
        verses        << verse["text"]
      end

      # now build the reference
      @reference = "#{bookname} #{chapter}:#{verse_numbers.join("-")}"

      # build the text
      @text = verses.join(" ")
    end

    def reference
      @reference
    end

    def text
      @text
    end

    def date
      Date.today
    end

    def version
      BIBLE_VERSION
    end

    def to_html
      html =  "<p class=\"votd-text\">#{self.text}</p>\n"
      html << "<p>\n"
      html << "<span class=\"votd-reference\"><strong>#{self.reference}</strong></span>\n"
      html << "<span class=\"votd-version\"><em>(#{self.version})</em></span>\n"
      html << "</p>\n"
      html
    end
  end
end
