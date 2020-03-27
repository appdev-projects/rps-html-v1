require "rails_helper"

describe "/paper" do
  it "renders an HTML page", :points => 1 do
    visit "/paper"

    expect(page.status_code).to be(200)
  end
end

describe "/paper" do
  it "has the DOCTYPE declaration VERY FIRST line of the page.", :points => 1 do
    visit "/paper"

    source_code = page.html
    source_code_without_extra_spaces = source_code.strip
    first_line = source_code_without_extra_spaces.split("\n").first
    downcased_first_line = first_line.downcase
    expect(first_line).to match(/<!doctype html>/i),
      "Expected the first line of the HTML file to contain a doctype declaration. Found: #{first_line}"
  end
end

describe "/paper" do
  it "has a meta tag that increases the types of characters we can use.", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("head") do
      with_tag("meta", :with => { :charset => "utf-8" } )
    end
  end
end

describe "/paper" do
  it "has the title 'You played paper!'", :points => 1 do
    visit "/paper"
    
    expect(page).to have_title(/You played paper/i)

  end
end

describe "/paper" do
  it "has at least one link", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("a", { :minimum => 1 } )
    a_count = all("a").count
    expect(a_count).to be >= 1,
      "Expected page to have at least one <a>, but found #{a_count} instead."
  end
end

describe "/paper" do
  it "has at least two links", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("a", { :minimum => 2 } )
    a_count = all("a").count
    expect(a_count).to be >= 2,
      "Expected page to have at least two <a>'s, but found #{a_count} instead."
  end
end

describe "/paper" do
  it "has at least three links", :points => 3 do
    visit "/paper"
    
    # expect(page).to have_tag("a", { :minimum => 3 } )
    a_count = all("a").count
    expect(a_count).to be >= 3,
      "Expected page to have at least three <a>'s, but found #{a_count} instead."
  end
end

describe "/paper" do
  it "has exactly four links", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("a", { :count => 4 } )
    a_count = all("a").count
    expect(a_count).to eq(4),
      "Expected page to have exactly 4 <a>'s, but found #{a_count} instead."
  end
end

describe "/paper" do
  it "has a link to '/rock' with the text 'Play Rock'", :points => 1 do
    visit "/paper"

    expect { find("a[href*='/rock']", :text => /Play Rock/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Rock' and an href attribute of '/rock', but didn't find one."
  end
end

describe "/paper" do
  it "has a link to '/paper' with the text 'Play Paper'", :points => 1 do
    visit "/paper"

    expect { find("a[href*='/paper']", :text => /Play Paper/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Paper' and an href attribute of '/paper', but didn't find one."
  end
end

describe "/paper" do
  it "has a link to '/scissors' with the text 'Play Scissors'", :points => 1 do
    visit "/paper"

    expect { find("a[href*='/scissors']", :text => /Play Scissors/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Scissors' and an href attribute of '/scissors', but didn't find one."
  end
end

describe "/paper" do
  it "has a link to '/' with the text 'Rules'", :points => 1 do
    visit "/paper"

    expect { find("a[href='/']", :text => /Rules/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Rules' and an href attribute of '/', but didn't find one."
  end
end

describe "/paper" do
  it "has each 'Play' link in their own <div>", :points => 3 do
    visit "/paper"

    play_rock_link = find("a[href*='/rock']", :text => /Play Rock/i) 
    play_rock_parent = play_rock_link.find(:xpath, "..")
    expect(play_rock_parent.tag_name).to eq("div"),
      "Expected parent element of 'Play Rock' link to be a <div> but was '#{play_rock_parent.tag_name}' instead."
    
    play_paper_link = find("a[href*='/paper']", :text => /Play Paper/i) 
    play_paper_parent = play_paper_link.find(:xpath, "..")
    expect(play_paper_parent.tag_name).to eq("div"),
      "Expected parent element of 'Play Paper' link to be a <div> but was '#{play_paper_parent.tag_name}' instead."
    
    play_scissors_link = find("a[href*='/scissors']", :text => /Play Scissors/i) 
    play_scissors_parent = play_scissors_link.find(:xpath, "..")
    expect(play_scissors_parent.tag_name).to eq("div"),
      "Expected parent element of 'Play Scissors' link to be a <div> but was '#{play_scissors_parent.tag_name}' instead."
    
    expect(play_rock_parent).to_not eq(play_paper_parent),
      "Expected parent element of 'Play Rock' link to be a different <div> than the parent of 'Play Paper' link, but they were the same."
    expect(play_paper_parent).to_not eq(play_scissors_parent),
      "Expected parent element of 'Play Paper' link to be a different <div> than the parent of 'Play Scissors' link, but they were the same."
  end
end

describe "/paper" do
  it "has at least one secondary heading", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("h2", { :minimum => 1 } )
    h2_count = all("h2").count
    expect(h2_count).to be >= 1,
      "Expected page to have at least one <h2>, but found #{h2_count} instead."
  end
end

describe "/paper" do
  it "has at least two secondary headings", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("h2", { :minimum => 2 } )
    h2_count = all("h2").count
    expect(h2_count).to be >= 2,
      "Expected page to have at least two <h2>'s, but found #{h2_count} instead."
  end
end

describe "/paper" do
  it "has at most three secondary headings", :points => 1 do
    visit "/paper"
    
    # expect(page).to have_tag("h2", { :count => 3 } )
    h2_count = all("h2").count
    expect(h2_count).to eq(3),
      "Expected page to have exactly three <h2>'s, but found #{h2_count} instead."
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'We played paper!'", :points => 1 do
    visit "/paper"
    
    expect { find("h2", :text => /We played paper/i) }.to_not raise_error,
      "Expected page to have an <h2> with the text 'We played paper!', but didn't find one."
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'They played paper!'", :points => 1 do
    visit "/paper"
    
    expect { find("h2", :text => /They played paper/i) }.to_not raise_error,
      "Expected page to have an <h2> with the text 'They played paper!', but didn't find one."
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'We tied!'", :points => 1 do
    visit "/paper"
    
    expect { find("h2", :text => /We tied/i) }.to_not raise_error,
      "Expected page to have an <h2> with the text 'We tied!', but didn't find one."
  end
end

describe "/paper", :js => true do
  it "has all elements in the right order", :points => 1 do
    visit "/paper"
    
    play_rock_link = find("a", :text => /Play Rock/i)
    play_paper_link = find("a", :text => /Play Paper/i)
    play_scissors_link = find("a", :text => /Play Scissors/i)

    expect(play_paper_link).to be_below(play_rock_link)

    expect(play_scissors_link).to be_below(play_paper_link)

    we_played_heading = find("h2", :text => /We played paper/i)
    
    expect(we_played_heading).to be_below(play_scissors_link)
    
    they_played_heading = find("h2", :text => /They played paper/i)
    expect(they_played_heading).to be_below(we_played_heading)
    
    outcome_heading = find("h2", :text => /We tied/i)
    
    expect(outcome_heading).to be_below(they_played_heading)

    rules_link = find("a", text: /Rules/i)
    
    expect(rules_link).to be_below(outcome_heading)
  end
end
