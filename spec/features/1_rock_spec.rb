require "rails_helper"

describe "/rock" do
  it "renders an HTML page", :points => 1 do
    visit "/rock"

    expect(page.status_code).to be(200)
  end
end


describe "/rock" do
  it "has the DOCTYPE declaration as the first line of the page.", :points => 1 do
    visit "/rock"
    
    first_line = page.html.strip.downcase.first(15)
    expect(first_line).to match(/<!doctype html>/i),
      "Expected the first line of the HTML file to contain a doctype declaration. Found: #{first_line}"
  end
end

describe "/rock" do
  it "has a meta tag in the head of the page that increases the types of characters we can use.", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("meta", :with => { :charset => "utf-8" } )
      end
    end
  end
end

describe "/rock" do
  it "has the title 'You played rock!' ", :points => 1 do
    visit "/rock"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /You played rock/i)
      end
    end
  end
end

describe "/rock" do
  it "has at least one link", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/rock" do
  it "has at least two links", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/rock" do
  it "has at least three links", :points => 3 do
    visit "/rock"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/rock" do
  it "has at most four links", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("a", { :count => 4 } )
  end
end

describe "/rock" do
  it "has a link to '/rock' with the text 'Play Rock'", :points => 1 do
    visit "/rock"

    expect(page).to have_tag("a", :text => /Play Rock/i, :with => { :href => "/rock" } )
  end
end

describe "/rock" do
  it "has a link to '/paper' with the text 'Play Paper'", :points => 1 do
    visit "/rock"

    expect(page).to have_tag("a", :text => /Play Paper/i, :with => { :href => "/paper" } )
  end
end

describe "/rock" do
  it "has a link to '/scissors' with the text 'Play Scissors'", :points => 1 do
    visit "/rock"

    expect(page).to have_tag("a", :text => /Play Scissors/i, :with => { :href => "/scissors" } )
  end
end

describe "/rock" do
  it "has a link to '/' with the text 'Rules'", :points => 1 do
    visit "/rock"

    expect(page).to have_tag("a", :text => /Rules/i,:with => { :href => "/" } )
  end
end

describe "/rock" do
  it "has all 'Play'links on a separate line", :points => 3 do
    visit "/rock"

    expect(page).to have_tag("body") do
      with_tag("div") do
        with_tag("a", :with => { :href => "/rock" }, :text => /Play Rock/i)
      end
      with_tag("div") do
         with_tag("a", :with => { :href => "/paper" }, :text => /Play Paper/i)
      end
      with_tag("div") do
         with_tag("a", :with => { :href => "/scissors" }, :text => /Play Scissors/i)
      end
    end
  end
end

describe "/rock" do
  it "has at least one secondary heading", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("h2", { :minimum => 1 } )
  end
end

describe "/rock" do
  it "has at least two secondary headings", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("h2", { :minimum => 2 } )
  end
end

describe "/rock" do
  it "has at most three secondary headings", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("h2", { :count => 3 } )
  end
end

describe "/rock" do
  it "has one secondary heading with the text 'We played rock!'", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("h2", { :text => /We played rock/i } )
      end
    end
  end
end

describe "/rock" do
  it "has one secondary heading with the text 'They played paper!'", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("h2", { :text => /They played paper/i } )
      end
    end
  end
end

describe "/rock" do
  it "has one secondary heading with the text 'We lost!'", :points => 1 do
    visit "/rock"
    
    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("h2", { :text => /We lost/i } )
      end
    end
  end
end

describe "/rock" do
  it "has all elements in the right order", :points => 20 do
    visit "/rock"
    
    first_line = page.html.strip.downcase.first(15)
    
    expect(first_line).to match(/<!doctype html>/i),
      "Expected the first line of the HTML file to start with a doctype declaration. Found: #{first_line}."
    
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /You played rock/i )
        with_tag("meta", :with => { :charset => "utf-8" } )
      end
      
      with_tag("body") do
        with_tag("div:first-child") do
          with_tag("a", :count => 1 )
          play_rock_link = find("div:first-child a")
          href = play_rock_link[:href]
          # href should be /rock OR /rock.html
          expect(href).to match( /(\/rock\.html$|\/rock$)/ ),
            "Expected first link href to be either '/rock' or '/rock.html' but found #{href} instead."
          
        end
        with_tag("div:nth-child(2)") do
          with_tag("a", :count => 1 )
          with_tag("a", :with => { :href => "/paper" }, :text => /Play Paper/i)
        end
        with_tag("div:nth-child(3)") do
          with_tag("a", :count => 1 )
          with_tag("a", :with => { :href => "/scissors" }, :text => /Play Scissors/i)
        end
        
        with_tag("div:nth-child(3) + h2", :text => /We played rock/i)
        with_tag("h2:nth-of-type(2)", :text => /They played paper/i)
        with_tag("h2:nth-of-type(3)", :text => /We lost/i)
        
        with_tag("h2:nth-of-type(3) + a", :with => { :href => "/"}, :text => /Rules/i)

      end
    end
  end
end
