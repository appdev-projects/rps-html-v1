require "rails_helper"

describe "The home page" do
  it "renders an HTML page", :points => 0 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "The home page" do
  it "has the title 'Rock-Paper-Scissors Rules'", :points => 1 do
    visit "/"

    expect(page).to have_title(/Rock-Paper-Scissors Rules/i)
  end
end

describe "The home page" do
  it "has at least one link", :points => 1 do
    visit "/"

    # expect(page).to have_tag("a", { :minimum => 1 } )
    a_count = all("a").count
    expect(a_count).to be >= 1,
      "Expected page to have at least one <a>, but found #{a_count} instead."
  end
end

describe "The home page" do
  it "has at least two links", :points => 1 do
    visit "/"

    # expect(page).to have_tag("a", { :minimum => 2 } )
    a_count = all("a").count
    expect(a_count).to be >= 2,
      "Expected page to have at least two <a>'s, but found #{a_count} instead."
  end
end

describe "The home page" do
  it "has at least three links", :points => 3 do
    visit "/"

    # expect(page).to have_tag("a", { :minimum => 3 } )
    a_count = all("a").count
    expect(a_count).to be >= 3,
                       "Expected page to have at least three <a>'s, but found #{a_count} instead."
  end
end

describe "The home page" do
  it "has exactly four links", :points => 1 do
    visit "/"

    # expect(page).to have_tag("a", { :count => 4 } )
    a_count = all("a").count
    expect(a_count).to eq(4),
      "Expected page to have exactly 4 <a>'s, but found #{a_count} instead."
  end
end

describe "The home page" do
  it "has a link to '/rock' with the text 'Play Rock'", :points => 1 do
    visit "/"

    expect { find("a[href*='/rock']", :text => /Play Rock/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Rock' and an href attribute of '/rock', but didn't find one."
  end
end

describe "The home page" do
  it "has a link to '/paper' with the text 'Play Paper'", :points => 1 do
    visit "/"

    expect { find("a[href*='/paper']", :text => /Play Paper/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Paper' and an href attribute of '/paper', but didn't find one."
  end
end

describe "The home page" do
  it "has a link to '/scissors' with the text 'Play Scissors'", :points => 1 do
    visit "/"

    expect { find("a[href*='/scissors']", :text => /Play Scissors/i) }.to_not raise_error,
      "Expected page to have an <a> with the text 'Play Scissors' and an href attribute of '/scissors', but didn't find one."
  end
end

describe "The home page" do
  it "has each 'Play' link in their own <div> tag", :points => 3 do
    visit "/"

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

describe "The home page" do
  it "has a heading with the text 'Welcome to Rock-Paper-Scissors!'", :points => 1 do
    visit "/"

    # expect(page).to have_tag("h1", :seen => /Welcome to Rock-Paper-Scissors/i)
    expect { find("h1", :text => /Welcome to Rock-Paper-Scissors/i) }.to_not raise_error,
      "Expected page to have an <h1> with the text 'Welcome to Rock-Paper-Scissors!', but didn't find one."
  end
end

describe "The home page" do
  it "has a link with the text 'Wikipedia'", :points => 1 do
    visit "/"

    expect(page).to have_link("Wikipedia")
  end
end

describe "The home page" do
  it "has a link with the text 'Wikipedia'", :points => 1 do
    visit "/"

    # expect(page).to have_tag("a", :seen => /Wikipedia/i )
    expect { find("a", :text => /Wikipedia/i) }.to_not raise_error,
      "Expected page to have an <a> tag with the text 'Wikipedia', but didn't find one."
  end
end

describe "The home page" do
  it "has a link to wikipedia with the text 'Wikipedia'", :points => 1 do
    visit "/"

    expect(page).to have_link("Wikipedia", :href => /wikipedia.org/)
  end
end

describe "The home page" do
  it "has a paragraph with the text 'From Wikipedia:' ", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :seen => /From Wikipedia/i )
    expect { find("p", :text => /From Wikipedia/i) }.to_not raise_error,
      "Expected page to have an <p> with the text 'From Wikipedia:', but didn't find one."
  end
end

describe "The home page" do
  it "has 'Wikipedia' as a link to wikipedia.org that opens in a new tab", :points => 3 do
    visit "/"

    wiki_link = find("a", :text => /Wikipedia/i)
    expect(wiki_link[:target]).to eq("_blank"),
      "Expected target attribute of Wikipedia link to have the value '_blank' but it did not."
  end
end

describe "The home page" do
  it "has at least 1 paragraph tag", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 1 )
    p_count = all("p").count
    expect(p_count).to be >= 1,
      "Expected page to have at least one <p>, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 2 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 2 )
    p_count = all("p").count
    expect(p_count).to be >= 2,
      "Expected page to have at least two <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 3 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 3 )
    p_count = all("p").count
    expect(p_count).to be >= 3,
      "Expected page to have at least three <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 4 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 4 )
    p_count = all("p").count
    expect(p_count).to be >= 4,
      "Expected page to have at least four <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 5 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 5 )
    p_count = all("p").count
    expect(p_count).to be >= 5,
      "Expected page to have at least five <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 6 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 6 )
    p_count = all("p").count
    expect(p_count).to be >= 6,
      "Expected page to have at least six <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at least 7 paragraph tags", :points => 1 do
    visit "/"

    # expect(page).to have_tag("p", :minimum => 7 )
    p_count = all("p").count
    expect(p_count).to be >= 7,
      "Expected page to have at least seven <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has at most 8 paragraph tags", :points => 1 do
    visit "/"

    p_count = all("p").count

    expect(p_count).to eq(8),
      "Expected page to have exactly eight <p>'s, but found #{p_count} instead."
  end
end

describe "The home page" do
  it "has a paragraph with 'Rock-paper-scissors...' text", :points => 1 do
    visit "/"

    text = "Rock-paper-scissors (also known as paper, scissors, stone or other" +
           " variants) is a hand game usually played between two people, in which" +
           " each player simultaneously forms one of three shapes with an outstretched hand."

    # expect(page).to have_tag("p", :seen => text, :count => 1 )
    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'Rock-paper-scissors (also known as...', but didn't find one."
  end
end

describe "The home page" do
  it "has a paragraph with 'These shapes are:' text", :points => 1 do
    visit "/"

    text = "These shapes are:"

    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'These shapes are:', but didn't find one."
  end
end

describe "The home page" do
  it "has one unordered list", :points => 1 do
    visit "/"

    expect(page).to have_tag("ul", :count => 1)
  end
end

describe "The home page" do
  it "has a unordered list with 3 list items", :points => 1 do
    visit "/"

    expect(page).to have_tag("ul", :count => 1) do
      with_tag("li", :count => 3)
      with_tag("li", :seen => /"rock" \(a closed fist\)/i)
      with_tag("li", :seen => /"paper" \(a flat hand\)/i)
      with_tag("li", :seen => /"scissors" \(a fist with the index and middle fingers extended, forming a V\)/i)
    end
  end
end

describe "The home page" do
  it "has a paragraph with text: 'A player who decides...' ", :points => 1 do
    visit "/"

    text = /A player who decides to play rock will beat another player who has chosen scissors \("rock crushes scissors" or sometimes "blunts scissors"\), but will lose to one who has played paper \("paper covers rock"\); a play of paper will lose to a play of scissors \("scissors cut\[s\] paper"\). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie./i

    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'A player who decides..', but didn't find one."
  end
end

describe "The home page" do
  it "has one table element ", :points => 1 do
    visit "/"

    table_count = all("table").count
    expect(table_count).to eq(1),
      "Expected page to have one table element, but found #{table_count} instead."
  end
end

describe "The home page" do
  it "has one table element with a border of 1", :points => 1 do
    visit "/"

    table = find("table")

    expect(table[:border]).to eq("1"),
      "Expected table to have a border attribute equal to '1', but wasn't."
  end
end

describe "The home page" do
  it "has one table element with 5 rows", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr", :count => 5)
    end
  end
end

describe "The home page" do
  it "has a table column in the 1st row that spans 2 rows and 2 columns", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:first-child") do
        with_tag("td", :with => { :rowspan => 2, :colspan => 2 })
      end
    end
  end
end

describe "The home page" do
  it "has a table column in the 1st row that spans 3 columns with text 'and they play...' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:first-child") do
        with_tag("td", :with => { :colspan => 3 }, :seen => "and they play...")
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 2nd row with text 'Rock' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:first-child", :seen => "Rock")
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 2nd row with text 'Paper' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:nth-child(2)", :seen => "Paper")
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 2nd row with text 'Scissors' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:nth-child(3)", :seen => "Scissors")
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 3rd row span 3 rows & have text 'If we play...' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:first-child", :with => { :rowspan => 3 }, :seen => "If we play...")
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 3rd have text 'Rock' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(2)", :seen => "Rock")
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 3rd row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(3)", :seen => "We tie")
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 3rd row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(4)", :seen => "We lose")
      end
    end
  end
end

describe "The home page" do
  it "has the 5th table column in the 3rd row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(5)", :seen => "We win")
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 4th row have text 'Paper' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:first-child", :seen => "Paper")
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 4th row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(2)", :seen => "We win")
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 4th row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(3)", :seen => "We tie")
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 4th row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(4)", :seen => "We lose")
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 5th row have text 'Scissors' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:first-child", :seen => "Scissors")
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 5th row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(2)", :seen => "We lose")
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 5th row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(3)", :seen => "We win")
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 5th row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(4)", :seen => "We tie")
      end
    end
  end
end

describe "The home page" do
  it "has the whole HTML table displayed correctly", :points => 3 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 }) do
      with_tag("tr:first-child") do
        with_tag("td:first-child", :with => { :rowspan => 2, :colspan => 2 })
        with_tag("td:nth-child(2)", :with => { :colspan => 3 }, :seen => /and they play/i)
      end

      with_tag("tr:nth-child(2)") do
        with_tag("td:first-child", :seen => /Rock/i)
        with_tag("td:nth-child(2)", :seen => /Paper/i)
        with_tag("td:nth-child(3)", :seen => /Scissors/i)
      end

      with_tag("tr:nth-child(3)") do
        with_tag("td:first-child", :with => { :rowspan => 3 }, :seen => /If we play/i)
        with_tag("td:nth-child(2)", :seen => /Rock/i)
        with_tag("td:nth-child(3)", :seen => /We tie/i)
        with_tag("td:nth-child(4)", :seen => /We lose/i)
        with_tag("td:nth-child(5)", :seen => /We win/i)
      end

      with_tag("tr:nth-child(4)") do
        with_tag("td:first-child", :seen => /Paper/i)
        with_tag("td:nth-child(2)", :seen => /We win/i)
        with_tag("td:nth-child(3)", :seen => /We tie/i)
        with_tag("td:nth-child(4)", :seen => /We lose/i)
      end

      with_tag("tr:nth-child(5)") do
        with_tag("td:first-child", :seen => /Scissors/i)
        with_tag("td:nth-child(2)", :seen => /We lose/i)
        with_tag("td:nth-child(3)", :seen => /We win/i)
        with_tag("td:nth-child(4)", :seen => /We tie/i)
      end
    end
  end
end

describe "The home page" do
  it "has a paragraph with text: 'Originating from China and Japan...' ", :points => 1 do
    visit "/"

    text = /Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone"./i

    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'Originating from China...', but didn't find one."
  end
end

describe "The home page" do
  it "has an image with rock paper scissors svg from the target", :points => 1 do
    visit "/"

    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png"

    expect { find("img[src*='#{image}']") }.to_not raise_error,
      "Expected page to have an <img> tag with an 'src' attribute with the value of #{image}, but didn't find one."
  end
end

describe "The home page" do
  it "has a paragraph with text: 'A chart showing how...' ", :points => 1 do
    visit "/"

    text = /A chart showing how the three game elements interact/i

    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'A chart showing...', but didn't find one."
  end
end

describe "The home page" do
  it "has an image with Kitsune-ken svg from the target", :points => 1 do
    visit "/"

    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg"

    expect { find("img[src='#{image}']") }.to_not raise_error,
      "Expected page to have an <img> with a src attribute of '#{image}', but didn't find one."
  end
end

describe "The home page" do
  it "has a paragraph with text: 'Kitsune-ken was a...' ", :points => 1 do
    visit "/"

    text = /Kitsune-ken was a popular Japanese rock.paper.scissors variant/i

    expect { find("p", :text => text) }.to_not raise_error,
      "Expected page to have an <p> with the text 'Kitsune-ken was a...', but didn't find one."
  end
end

describe "The home page" do
  it "has an image with Japanese sansukumi-ken svg from the target", :points => 1 do
    visit "/"

    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"

    expect { find("img[src='#{image}']") }.to_not raise_error,
      "Expected page to have an <img> with a src attribute of '#{image}', but didn't find one."
  end
end

describe "The home page" do
  it "has a paragraph with text: 'Mushi-ken, the earliest...' ", :points => 1 do
    visit "/"

    text = /Mushi-ken, the earliest Japanese sansukumi-ken game \(1809\). From left to right: slug \(namekuji\), frog \(kawazu\) and snake \(hebi\)/i
    expect { find("p", :text => text) }.to_not raise_error,
      "Expected to find <p> tag with text 'Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).', but didn't find one"
  end
end

describe "The home page", :js => true do
  it "has all the elements in the right order.", :points => 3 do
    visit "/"

    play_rock_link = find("a", :text => /Play Rock/i)
    play_paper_link = find("a", :text => /Play Paper/i)
    play_scissors_link = find("a", :text => /Play Scissors/i)

    expect(play_paper_link).to be_below(play_rock_link)

    expect(play_scissors_link).to be_below(play_paper_link)

    welcome = find("h1", :text => /Welcome to Rock-Paper-Scissors/i)

    expect(welcome).to be_below(play_scissors_link)

    wikipedia_link = find("a", :text => /Wikipedia/i)

    expect(wikipedia_link).to be_below(welcome)

    rock_paper_scissors = /Rock-paper-scissors \(also known as paper, scissors, stone or other variants\) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand/i

    rps_paragraph = find("p", :text => rock_paper_scissors)

    expect(rps_paragraph).to be_below(wikipedia_link)

    these_shapes_are = /These shapes are/i
    these_shapes_are_paragraph = find("p", :text => these_shapes_are)

    expect(these_shapes_are_paragraph).to be_below(rps_paragraph)

    shapes_list = find("ul", :text => /"rock" \(a closed fist\)/i)

    expect(shapes_list).to be_below(these_shapes_are_paragraph)

    a_player_who_decides = /A player who decides to play rock will beat another player who has chosen scissors \("rock crushes scissors" or sometimes "blunts scissors"\), but will lose to one who has played paper \("paper covers rock"\); a play of paper will lose to a play of scissors \("scissors cut\[s\] paper"\). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie./i
    a_player_who_decides_paragraph = find("p", :text => a_player_who_decides)

    expect(a_player_who_decides_paragraph).to be_below(shapes_list)

    table = find("table")

    expect(table).to be_below(a_player_who_decides_paragraph)

    origination_from_china = /Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone"/i

    origination_paragraph = find("p", :text => origination_from_china)

    expect(origination_paragraph).to be_below(table)

    rock_paper_scissors_svg = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png"

    rps_svg = find("img[src*='#{rock_paper_scissors_svg}']")

    expect(rps_svg).to be_below(origination_paragraph)

    a_chart_showing = /A chart showing how the three game elements interact/i
    a_chart_showing_paragraph = find("p", :text => a_chart_showing)

    expect(a_chart_showing_paragraph).to be_below(rps_svg)

    kistune_ken = /Kitsune-ken was a popular Japanese rock.paper.scissors variant/i
    kistune_ken_image = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg"

    kistune_ken_element = find("img[src*='#{kistune_ken_image}'")

    expect(kistune_ken_element).to be_below(a_chart_showing_paragraph)

    kistune_ken_text = find("p", :text => kistune_ken)

    expect(kistune_ken_text).to be_below(kistune_ken_element)

    mushi_ken = /Mushi-ken, the earliest Japanese sansukumi-ken game \(1809\). From left to right: slug \(namekuji\), frog \(kawazu\) and snake \(hebi\)/i
    mushi_ken_image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"

    mushi_ken_element = find("img[src*='#{mushi_ken_image}'")

    expect(mushi_ken_element).to be_below(kistune_ken_text)

    mushi_ken_text = find("p", :text => mushi_ken)
    expect(mushi_ken_text).to be_below(mushi_ken_element)
  end
end
