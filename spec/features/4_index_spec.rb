require "rails_helper"

describe "The home page" do
  it "renders an HTML page", :points => 0 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "The home page" do
  it "has the title 'Rock-Paper-Scissors Rules' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => "Rock-Paper-Scissors Rules")
      end
    end
  end
end

describe "The home page" do
  it "has at least one link", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "The home page" do
  it "has at least two links", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "The home page" do
  it "has at least three links", :points => 3 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "The home page" do
  it "has at most four links", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :count => 4 } )
  end
end

describe "The home page" do
  it "has a link to '/rock' with the text 'Play Rock'", :points => 1 do
    visit "/"

    expect(page).to have_link("Play Rock", { :href => "/rock" } )
  end
end

describe "The home page" do
  it "has a link to '/paper' with the text 'Play Paper'", :points => 1 do
    visit "/"

    expect(page).to have_link("Play Paper", { :href => "/paper" } )
  end
end

describe "The home page" do
  it "has a link to '/scissors' with the text 'Play Scissors'", :points => 1 do
    visit "/"

    expect(page).to have_link("Play Scissors", { :href => "/scissors" } )
  end
end

describe "The home page" do
  it "has all 'Play' links on a separate line", :points => 3 do
    visit "/"

    expect(page).to have_tag("div") {
      with_tag("a", :with => { :href => "/rock" }, :seen => "Play Rock")
    }
    expect(page).to have_tag("div") {
      with_tag("a", :with => { :href => "/paper" }, :seen => "Play Paper")
    }
    expect(page).to have_tag("div") {
      with_tag("a", :with => { :href => "/scissors" }, :seen => "Play Scissors")
    }
  end
end

describe "The home page" do
  it "has a heading with the text 'Welcome to Rock-Paper-Scissors!'", :points => 1 do
    visit "/"

    expect(page).to have_tag("h1", :seen => "Welcome to Rock-Paper-Scissors!")
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

    expect(page).to have_tag("a", :seen => "Wikipedia" )
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

    expect(page).to have_tag("p", :seen => "From Wikipedia:" )
  end
end

describe "The home page" do
  it "has 'Wikipedia' is as a link to wikipedia.org that opens in a new tab", :points => 3 do
    visit "/"
    
    expect(page).to have_tag("p", :seen => "From Wikipedia:" ) { 
      have_link("Wikipedia", :href => /wikipedia.org/) 
      with_tag("a", :with => { :target => "_blank"}, :seen => "Wikipedia")
    }
  end
end

describe "The home page" do
  it "has at least 1 paragraph tag", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 1 )
  end
end

describe "The home page" do
  it "has at least 2 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 2 )
  end
end

describe "The home page" do
  it "has at least 3 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 3 )
  end
end

describe "The home page" do
  it "has at least 4 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 4 )
  end
end

describe "The home page" do
  it "has at least 5 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 5 )
  end
end

describe "The home page" do
  it "has at least 6 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 6 )
  end
end

describe "The home page" do
  it "has at least 7 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :minimum => 7 )
  end
end

describe "The home page" do
  it "has at most 8 paragraph tags", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :count => 8 )
  end
end

describe "The home page" do
  it "has a paragraph with 'Rock-paper-scissors...' text", :points => 1 do
    visit "/"
    
    text = "Rock-paper-scissors (also known as paper, scissors, stone or other" +
    " variants) is a hand game usually played between two people, in which" +
    " each player simultaneously forms one of three shapes with an outstretched hand."

    expect(page).to have_tag("p", :seen => text, :count => 1 )
  end
end

describe "The home page" do
  it "has a paragraph with 'These shapes are:' text", :points => 1 do
    visit "/"
    
    text = "These shapes are:"

    expect(page).to have_tag("p", :seen => text, :count => 1 )
  end
end

describe "The home page" do
  it "has a unordered list", :points => 1 do
    visit "/"

    expect(page).to have_tag("ul", :count => 1 )
  end
end

describe "The home page" do
  it "has a unordered list with 3 list items", :points => 1 do
    visit "/"

    expect(page).to have_tag("ul", :count => 1 ) do
      with_tag("li", :count => 3)
      with_tag("li", :seen => "\"rock\" (a closed fist)")
      with_tag("li", :seen => "\"paper\" (a flat hand)")
      with_tag("li", :seen => "\"scissors\" (a fist with the index and middle fingers extended, forming a V)")
    end
  end
end

describe "The home page" do
  it "has a paragraph with text: 'A player who decides...' ", :points => 1 do
    visit "/"

    text = /A player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut[s] paper"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie./
    
    expect(page).to have_tag("p", :seen => text)
  end
end

describe "The home page" do
  it "has one table element ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :count => 1)
  end
end

describe "The home page" do
  it "has one table element with a border of 1", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } )
  end
end

describe "The home page" do
  it "has one table element with 5 rows", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr", :count => 5 )
    end
  end
end

describe "The home page" do
  it "has a table column in the 1st row that spans 2 rows and 2 columns", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:first-child") do
        with_tag("td", :with => { :rowspan => 2, :colspan => 2 } )
      end
    end
  end
end

describe "The home page" do
  it "has a table column in the 1st row that spans 3 columns with text 'and they play...' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:first-child") do
        with_tag("td", :with => { :colspan => 3 }, :seen => "and they play..." )
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 2nd row with text 'Rock' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:first-child", :seen => "Rock" )
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 2nd row with text 'Paper' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:nth-child(2)", :seen => "Paper" )
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 2nd row with text 'Scissorsr' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(2)") do
        with_tag("td:nth-child(3)", :seen => "Scissors" )
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 3rd row span 3 rows & have text 'If we play...' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:first-child", :with => { :rowspan => 3 }, :seen => "If we play..." )
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 3rd have text 'Rock' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(2)", :seen => "Rock" )
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 3rd row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(3)", :seen => "We tie" )
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 3rd row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(4)", :seen => "We lose" )
      end
    end
  end
end

describe "The home page" do
  it "has the 5th table column in the 3rd row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(3)") do
        with_tag("td:nth-child(5)", :seen => "We win" )
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 4th row have text 'Paper' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:first-child", :seen => "Paper" )
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 4th row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(2)", :seen => "We win" )
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 4th row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(3)", :seen => "We tie" )
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 4th row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(4)") do
        with_tag("td:nth-child(4)", :seen => "We lose" )
      end
    end
  end
end

describe "The home page" do
  it "has the 1st table column in the 5th row have text 'Scissors' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:first-child", :seen => "Scissors" )
      end
    end
  end
end

describe "The home page" do
  it "has the 2nd table column in the 5th row have text 'We lose' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(2)", :seen => "We lose" )
      end
    end
  end
end

describe "The home page" do
  it "has the 3rd table column in the 5th row have text 'We win' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(3)", :seen => "We win" )
      end
    end
  end
end

describe "The home page" do
  it "has the 4th table column in the 5th row have text 'We tie' ", :points => 1 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      with_tag("tr:nth-child(5)") do
        with_tag("td:nth-child(4)", :seen => "We tie" )
      end
    end
  end
end

describe "The home page" do
  it "has a whole dang table! ", :points => 10 do
    visit "/"

    expect(page).to have_tag("table", :with => { :border => 1 } ) do
      
      with_tag("tr:first-child") do
        with_tag("td:first-child", :with => { :rowspan => 2, :colspan => 2 } )
        with_tag("td:nth-child(2)", :with => { :colspan => 3 }, :seen => "and they play..." )
      end

      with_tag("tr:nth-child(2)") do
        with_tag("td:first-child", :seen => "Rock" )
        with_tag("td:nth-child(2)", :seen => "Paper" )
        with_tag("td:nth-child(3)", :seen => "Scissors" )
      end

      with_tag("tr:nth-child(3)") do
        with_tag("td:first-child", :with => { :rowspan => 3 }, :seen => "If we play..." )
        with_tag("td:nth-child(2)", :seen => "Rock" )
        with_tag("td:nth-child(3)", :seen => "We tie" )
        with_tag("td:nth-child(4)", :seen => "We lose" )
        with_tag("td:nth-child(5)", :seen => "We win" )
      end
      
      with_tag("tr:nth-child(4)") do
        with_tag("td:first-child", :seen => "Paper" )
        with_tag("td:nth-child(2)", :seen => "We win" )
        with_tag("td:nth-child(3)", :seen => "We tie" )
        with_tag("td:nth-child(4)", :seen => "We lose" )
      end
      
      with_tag("tr:nth-child(5)") do
        with_tag("td:first-child", :seen => "Scissors" )
        with_tag("td:nth-child(2)", :seen => "We lose" )
        with_tag("td:nth-child(3)", :seen => "We win" )
        with_tag("td:nth-child(4)", :seen => "We tie" )
      end
    end
  end
end


describe "The home page" do
  it "has a paragraph with text: 'Originating from China and Japan...' ", :points => 1 do
    visit "/"

    text = /Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone"./
    
    expect(page).to have_tag("p", :seen => text)
  end
end

describe "The home page" do
  it "has an image with rock paper scissors svg from the target", :points => 1 do
    visit "/"
    
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png"
    
    expect(page).to have_tag("img", :with => { :src => image})
  end
end

describe "The home page" do
  it "has a paragraph with text: 'A chart showing how...' ", :points => 1 do
    visit "/"
    
    text = /A chart showing how the three game elements interact/
    
    expect(page).to have_tag("p", :seen => text)
  end
end

describe "The home page" do
  it "has a div with the rock paper scissors image and paragraph with text: 'A chart showing how...' inside", :points => 5 do
    visit "/"
    
    text = /A chart showing how the three game elements interact/
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png"
    
    expect(page).to have_tag("div") do
      with_tag("img", :with => { :src => image } )
      with_tag("p", :seen => text )
    end
  end
end

describe "The home page" do
  it "has an image with Kitsune-ken svg from the target", :points => 1 do
    visit "/"
    
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg"
    
    expect(page).to have_tag("img", :with => { :src => image})
  end
end

describe "The home page" do
  it "has a paragraph with text: 'Kitsune-ken was a...' ", :points => 1 do
    visit "/"
    
    text = /Kitsune-ken was a popular Japanese rock–paper–scissors variant./
    
    expect(page).to have_tag("p", :seen => text)
  end
end

describe "The home page" do
  it "has a div with the kistune-ken image and paragraph with text: 'Kitsune-ken was a...' inside", :points => 5 do
    visit "/"
    
    text = /Kitsune-ken was a popular Japanese rock–paper–scissors variant/
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg"
    
    expect(page).to have_tag("div") do
      with_tag("img", :with => { :src => image } )
      with_tag("p", :seen => text )
    end
  end
end

describe "The home page" do
  it "has an image with Japanese sansukumi-ken svg from the target", :points => 1 do
    visit "/"
    
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"
    
    expect(page).to have_tag("img", :with => { :src => image})
  end
end

describe "The home page" do
  it "has a paragraph with text: 'Mushi-ken, the earliest...' ", :points => 1 do
    visit "/"
    
    text = /Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi)./
    
    expect(page).to have_tag("p", :seen => text)
  end
end

describe "The home page" do
  it "has a div with the Japanese sansukumi-ken image and paragraph with text: 'Mushi-ken, the earliest...' inside", :points => 5 do
    visit "/"
    
    text = /Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi)./
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"
    
    expect(page).to have_tag("div") do
      with_tag("img", :with => { :src => image } )
      with_tag("p", :seen => text )
    end
  end
end

describe "The home page" do
  it "has all the elements in the right order.", :points => 15 do
    visit "/"
    
    text = /Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi)/
    image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"
    
    expect(page).to have_tag("html > body") do

      with_tag("div:first-child") {
        with_tag("a", :with => { :href => "/rock" }, :seen => "Play Rock")
      }
      with_tag("div:nth-child(2)") {
        with_tag("a", :with => { :href => "/paper" }, :seen => "Play Paper")
      }
      with_tag("div:nth-child(3)") {
        with_tag("a", :with => { :href => "/scissors" }, :seen => "Play Scissors")
      }
 
      with_tag("div:nth-child(3) + h1", :seen => "Welcome to Rock-Paper-Scissors!")

      with_tag("h1 + p:first-of-type", :seen => "From Wikipedia:" ) { 
        have_link("Wikipedia", :href => /wikipedia.org/) 
        with_tag("a", :with => { :target => "_blank" }, :seen => "Wikipedia")
      }

          
      rock_paper_scissors = /Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand/

      with_tag("p:nth-of-type(2)", :seen => rock_paper_scissors, :count => 1 )
      these_shapes_are = "These shapes are:"

      with_tag("p:nth-of-type(3)", :seen => these_shapes_are, :count => 1 )
      

      with_tag("p:nth-of-type(3) + ul", :count => 1 ) do
        with_tag("li", :count => 3)
        with_tag("li", :seen => "\"rock\" (a closed fist)")
        with_tag("li", :seen => "\"paper\" (a flat hand)")
        with_tag("li", :seen => "\"scissors\" (a fist with the index and middle fingers extended, forming a V)")
      end
      
      
      a_player_who_decides = /A player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut[s] paper"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie./i
      
      with_tag("p:nth-of-type(4)", :seen => a_player_who_decides)


      with_tag("p:nth-of-type(4) + table", :with => { :border => 1 } ) do
      
        with_tag("tr:first-child") do
          with_tag("td:first-child", :with => { :rowspan => 2, :colspan => 2 } )
          with_tag("td:nth-child(2)", :with => { :colspan => 3 }, :seen => "and they play..." )
        end
  
        with_tag("tr:nth-child(2)") do
          with_tag("td:first-child", :text => /Rock/i )
          with_tag("td:nth-child(2)", :text => /Paper/i )
          with_tag("td:nth-child(3)", :text => /Scissors/i )
        end
  
        with_tag("tr:nth-child(3)") do
          with_tag("td:first-child", :with => { :rowspan => 3 }, :text => /If we play/i )
          with_tag("td:nth-child(2)", :text => /Rock/i)
          with_tag("td:nth-child(3)", :text => /We tie/i )
          with_tag("td:nth-child(4)", :text => /We lose/i )
          with_tag("td:nth-child(5)", :text => /We win/i )
        end
        
        with_tag("tr:nth-child(4)") do
          with_tag("td:first-child", :text => /Paper/i)
          with_tag("td:nth-child(2)", :text => /We win/i )
          with_tag("td:nth-child(3)", :text => /We tie/i )
          with_tag("td:nth-child(4)", :text => /We lose/i )
        end
        
        with_tag("tr:nth-child(5)") do
          with_tag("td:first-child", :text => /Scissors/i )
          with_tag("td:nth-child(2)", :text => /We lose/i )
          with_tag("td:nth-child(3)", :text => /We win/i )
          with_tag("td:nth-child(4)", :text => /We tie/i )
        end
      end
      
      
      origination_from_china = /Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone"/i
      
      with_tag("p:nth-of-type(5)", :seen => origination_from_china)
      
      a_chart_showing = /A chart showing how the three game elements interact/i
      rock_paper_scissors_svg = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png"
      
      with_tag("p:nth-of-type(5) + div") do
        with_tag("img", :with => { :src => rock_paper_scissors_svg } )
        with_tag("p", :seen => a_chart_showing )
      end
      
          
      kistune_ken = /Kitsune-ken was a popular Japanese rock–paper–scissors variant/i
      kistune_ken_image = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg"
      
      with_tag("div:nth-of-type(5)") do
        with_tag("img", :with => { :src => kistune_ken_image } )
        with_tag("p", :seen => kistune_ken )
      end

      mushi_ken = /Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi)/i
      mushi_ken_image = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg"
      
      with_tag("div:nth-of-type(6)") do
        with_tag("img", :with => { :src => mushi_ken_image } )
        with_tag("p", :seen => mushi_ken )
      end
    end

  end
end
