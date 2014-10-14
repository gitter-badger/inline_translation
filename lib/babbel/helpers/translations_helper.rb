require 'action_view/helpers'

module Babbel
  module Helpers
    module TranslationsHelper
      include ActionView::Helpers

      def translate_link_for(translatable, to: I18n.locale, text: "Translate")
        link_to text, path_for(translatable, to) if translatable.language != to
      end

      def translated_element_for(translatable, field, element: :span, to: I18n.locale)
        content_tag element, '', class: "#{field}-translated to-#{to} babbel-translated"
      end

      private

      def path_for(translatable, to)
        translations_path translatable_id: translatable.id, 
                          translatable_type: translatable.class.to_s, 
                          to: to,
                          action: :create,
                          remote: true
      end
    end
  end
end