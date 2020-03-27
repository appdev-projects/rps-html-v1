require 'rspec/expectations'
require 'color_namer'

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
end

# See color examples here https://github.com/halostatue/color/blob/master/lib/color/rgb/colors.rb#L9
RSpec::Matchers.define :have_color do |expected_color|
  actual_color = nil
  match do |actual|
    rgba_color_value = actual.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values[0].to_i
    green_value = color_number_values[1].to_i
    blue_value = color_number_values[2].to_i
    color_array = ColorNamer.name_from_rgb(red_value, green_value, blue_value)
    actual_color = color_array.last.downcase
    expected_color.downcase == actual_color
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have a text color of '#{expected_color}', but was '#{actual_color}' instead'."
  end
end

RSpec::Matchers.define :have_background_color do |expected_color|
  actual_color = nil
  match do |actual|
    rgba_color_value = actual.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values[0].to_i
    green_value = color_number_values[1].to_i
    blue_value = color_number_values[2].to_i
    color_array = ColorNamer.name_from_rgb(red_value, green_value, blue_value)
    actual_color = color_array.last.downcase
    expected_color.downcase == actual_color
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have a background color of '#{expected_color}', but was '#{actual_color}' instead'."
  end
end

RSpec::Matchers.define :have_border_color do |expected_color|
  actual_color = nil
  match do |actual|
    rgba_color_value = actual.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values[0].to_i
    green_value = color_number_values[1].to_i
    blue_value = color_number_values[2].to_i
    color_array = ColorNamer.name_from_rgb(red_value, green_value, blue_value)
    actual_color = color_array.last.downcase
    expected_color.downcase == actual_color
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have a border color of '#{expected_color}', but was '#{actual_color}' instead'."
  end
end

RSpec::Matchers.define :have_same_width_as do |expected|
  actual_width = nil
  expected_width = nil
  match do |actual|
    actual_width = actual.rect.width
    expected_width = expected.rect.width
    
    expected_width == actual_width
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have the same width as '#{expected.tag_name}', but the actual width was '#{actual_width}' instead of #{expected_width}."
  end
end

RSpec::Matchers.define :have_same_height_as do |expected|
  actual_height = nil
  expected_height = nil
  match do |actual|
    actual_height = actual.rect.height
    expected_height = expected.rect.height
    
    expected_height == actual_height
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have the same height as '#{expected.tag_name}', but the actual height was '#{actual_height}' instead of #{expected_height}."
  end
end

RSpec::Matchers.define :be_next_to do |expected|
  actual_height = nil
  expected_height = nil
  match do |actual|
    expected_top = expected.rect.y
    expected_bottom = expected.rect.height + expected_top 
    expected_right = expected.rect.x
    expected_left = expected_right + expected.rect.width
            
    actual_top = actual.rect.y
    actual_right = actual.rect.x
    actual_left = actual_right + actual.rect.width
    
    actual_top.between?(expected_top,expected_bottom) && 
      (!actual_left.between?(expected_left, expected_right) && !actual_right.between?(expected_left, expected_right))
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have the same height as '#{expected.tag_name}', but the actual height was '#{actual_height}' instead of #{expected_height}."
  end
end

RSpec::Matchers.define :be_above do |expected|
  actual_height = nil
  expected_height = nil
  match do |actual|
    expected_top = expected.rect.y
    expected_bottom = expected.rect.height + expected_top
            
    actual_top = actual.rect.y
    actual_bottom = actual.rect.height + actual_top
    
    expected_bottom > actual_top

  end
  failure_message do |actual|
    "expected #{actual.tag_name} to be above '#{expected.tag_name}', but the actual bottom was '#{expected_bottom}' when the expected top is #{actual_top}."
  end
end

RSpec::Matchers.define :be_below do |expected|
  actual_height = nil
  actual_top = nil
  expected_height = nil
  expected_bottom = nil
  match do |actual|
    expected_top = expected.rect.y
    expected_bottom = expected.rect.height + expected_top
    
    actual_top = actual.rect.y
    actual_bottom = actual.rect.height + actual_top
    
    actual_top >= expected_bottom

  end
  failure_message do |actual|
    "expected #{actual.tag_name} to be below '#{expected.tag_name}' element, but the top of the '<#{actual.tag_name}>' was '#{actual_top}px' less than the bottom of '<#{expected.tag_name}>', which is #{expected_bottom}px."
  end
end

# expect(“nav”).to have_child(“a”)
RSpec::Matchers.define :have_child do |expected|

  match do |actual|
    tag_name = actual.tag_name
    actual.has_css?(expected.tag_name, text: expected.text)
  end
  failure_message do |actual|
    "expected #{actual.tag_name} to have a child '#{expected.tag_name}' element, but couldn't find one."
  end
end
