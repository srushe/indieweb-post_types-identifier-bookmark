require 'indieweb/post_types/identifier/base'
require 'indieweb/post_types/identifier/bookmark/version'

module Indieweb
  module PostTypes
    module Identifier
      module Bookmark
        extend Indieweb::PostTypes::Identifier::Base

        class << self
          private

          def identifier_from(data)
            return unless data.key?('bookmark-of')

            'bookmark'
          end
        end
      end
    end
  end
end
