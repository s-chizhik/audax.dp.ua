# https://github.com/Shopify/liquid/issues/236#issuecomment-43118741
# {{ foo | if: 'yes', 'no' }}

module Jekyll
    module TernaryFilters
        def if(value, true_output, untrue_output = '')
            value ? true_output : untrue_output
        end

        def unless(value, untrue_output, true_output = '')
            value ? true_output : untrue_output
        end
    end
end

Liquid::Template.register_filter(Jekyll::TernaryFilters)
