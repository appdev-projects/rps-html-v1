require "rails_helper"

describe "/paper" do
  it "renders an HTML page", :points => 1 do
    visit "/paper"

    expect(page.status_code).to be(200)
  end
end

describe "/paper" do
  it "has the title 'You played paper!' ", :points => 1 do
    visit "/paper"

    expect(page).to have_title "You played paper!"
  end
end

describe "/paper" do
  it "has at least one link", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/paper" do
  it "has at least two links", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/paper" do
  it "has at least three links", :points => 3 do
    visit "/paper"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/paper" do
  it "has at most four links", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("a", { :count => 4 } )
  end
end

describe "/paper" do
  it "has a link to '/rock' with the text 'Play Rock'", :points => 1 do
    visit "/paper"

    expect(page).to have_link("Play Rock", { :href => "/rock" } )
  end
end

describe "/paper" do
  it "has a link to '/paper' with the text 'Play Paper'", :points => 1 do
    visit "/paper"

    expect(page).to have_link("Play Paper", { :href => "/paper" } )
  end
end

describe "/paper" do
  it "has a link to '/scissors' with the text 'Play Scissors'", :points => 1 do
    visit "/paper"

    expect(page).to have_link("Play Scissors", { :href => "/scissors" } )
  end
end

describe "/paper" do
  it "has a link to '/' with the text 'Rules'", :points => 1 do
    visit "/paper"

    expect(page).to have_link("Rules", { :href => "/" } )
  end
end

describe "/paper" do
  it "has all 'Play'links on a separate line", :points => 3 do
    visit "/paper"

    expect(page).to have_tag("div") { with_tag("a", :with => { :href => "/rock" }, :text => /Play Rock/) }
    expect(page).to have_tag("div") { with_tag("a", :with => { :href => "/paper" }, :text => /Play Paper/) }
    expect(page).to have_tag("div") { with_tag("a", :with => { :href => "/scissors" }, :text => /Play Scissors/) }
  end
end

describe "/paper" do
  it "has at least one secondary heading", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("h2", { :minimum => 1 } )
  end
end

describe "/paper" do
  it "has at least two secondary headings", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("h2", { :minimum => 2 } )
  end
end

describe "/paper" do
  it "has at most three secondary headings", :points => 1 do
    visit "/paper"
    
    expect(page).to have_tag("h2", { :count => 3 } )
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'We played rock!'", :points => 1 do
    visit "/paper"
    
    expect(page).to have_selector("h2", { :text => "We played paper!" } )
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'They played paper!'", :points => 1 do
    visit "/paper"
    
    expect(page).to have_selector("h2", { :text => "They played paper!" } )
  end
end

describe "/paper" do
  it "has one secondary heading with the text 'We tied!'", :points => 1 do
    visit "/paper"
    
    expect(page).to have_selector("h2", { :text => "We tied!" } )
  end
end
