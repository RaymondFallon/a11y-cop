# frozen_string_literal: true
require "rubocop"


module RuboCop
  module Cop
    module Accessibility
      # This is placeholder logic from ArrayJoin, a real Cop (a credit to the force)
      #
      class ImageTag < Cop
        MSG = 'Favor `Array#join` over `Array#*`.'.freeze

        def_node_matcher :join_candidate?, '(send $array :* $str)'

        def on_send(node)
          join_candidate?(node) { add_offense(node, location: :selector) }
        end

        def autocorrect(node)
          array, join_arg = join_candidate?(node).map(&:source)

          lambda do |corrector|
            corrector.replace(node.source_range, "#{array}.join(#{join_arg})")
          end
        end
      end
    end
  end
end
