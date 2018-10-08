FriendlyId.defaults do |config|
  config.use :reserved

  config.reserved_words = %w(admin new edit index session users register)

  config.use :finders

  config.use :slugged

  config.slug_column = 'slug'

  config.sequence_separator = '-'

  module FriendlyId
    module Slugged
      def should_generate_new_friendly_id?
        return true if send(friendly_id_config.slug_column).nil? && !send(friendly_id_config.base).nil?

        change = :"#{friendly_id_config.base}_changed?"
        return true if respond_to?(change) && send(change)
        
        false
      end
    end
  end

end
