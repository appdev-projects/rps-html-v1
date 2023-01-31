# RPS HTML

Our goal will be to create a very rudimentary mockup of the game Rock, Paper, Scissors. Ultimately we'll make a site that looks like this:

http://rps-html.matchthetarget.com/

It's a pretty bad game right now — the computer always plays the same moves. We'll bring it to life with Ruby in a couple of weeks.

For now, we're just trying to learn how to make the pages _look_ the way we want.

## Standard Workflow

 1. Open the project in Gitpod.
 2. When you're creating the workspace for the very first time, wait for it to finish setting up.
 3. Start the web server by typing `bin/server` at a Terminal prompt and pressing <kbd>return</kbd>.
 4. Check out the your live application preview. I like to pop it open in its own tab.
 5. As you work, remember to navigate to `/git` and **commit often as you work.**
 6. Run `rails grade` as often as you like to see how you are doing, but **make sure you test your app manually first to make sure it matches the target's behavior first**.

## Setup

 - Click through that and then you may see a page that says "Yay! You’re on Rails!". That means your server started up successfully. We now need to start building some pages.
 - Create a file in the `/public` folder called `rock.html`. In that file, enter some text:

    ```html
    Hello, world!
    ```
 - In your live application, navigate to the URL that you just built — add `/rock` onto the end of the homepage URL. It will look something like this:

    ```
    https://yourlonganduglylookinggitpodpreviewurl.io/rock
    ```

    Congratulations! Your very first web page. As you update the source code with more stuff, be sure to save the source code first and then refresh the live app in Chrome to see the new version.

## Your job

 - Now your job is to, page by page, make your application match [the target](http://rps-html-target.herokuapp.com/rock).
 - Use the [HTML Reference](https://slides.com/raghubetina/html-reference?token=P-vFUIup) to try and find elements that will help.
 - When you get to the rules page, here are the URLs of the images:
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png)
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg)
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg)
 - When you are making links to pages, you can either put in the entire URL (the _absolute URL_):

    ```
    href="https://yourlonganduglylookinggitpodpreviewurl.io/rock"
    ```

    or you can put in just the part after domain (the _path_):

    ```
    href="/rock"
    ```

    but don't leave out the leading `/` if you go with the latter approach.
 - When you get to making the homepage (i.e. the bare domain with nothing after it), call the file `index.html` — Rails uses the file `/public/index.html` for the homepage.

    When you are making links to the homepage from the other pages, you can just put `/` in the `href`:

    ```html
    <a href="/">Rules</a>
    ```
 - Run `rails grade` to see how you're doing.
 - Ask lots of questions on Piazza!


## Specs
<details>
  <summary>Click here to see names of each test</summary>

/rock renders an HTML page 

/rock has the DOCTYPE declaration as the VERY FIRST line of the page. 

/rock has a meta tag in the head of the page that increases the types of characters we can use. 

/rock has the title 'You played rock!' 

/rock has at least one link 

/rock has at least two links 

/rock has at least three links 

/rock has at most four links 

/rock has a link to '/rock' with the text 'Play Rock' 

/rock has a link to '/paper' with the text 'Play Paper' 

/rock has a link to '/scissors' with the text 'Play Scissors' 

/rock has a link to '/' with the text 'Rules' 

/rock has each 'Play' link in their own `<div>` 

/rock has at least one secondary heading 

/rock has at least two secondary headings 

/rock has at most three secondary headings 

/rock has one secondary heading with the text 'We played rock!' 

/rock has one secondary heading with the text 'They played paper!' 

/rock has one secondary heading with the text 'We lost!' 

/rock has all elements in the right order 

/paper renders an HTML page 

/paper has the DOCTYPE declaration VERY FIRST line of the page. 

/paper has a meta tag that increases the types of characters we can use. 

/paper has the title 'You played paper!' 

/paper has at least one link 

/paper has at least two links 

/paper has at least three links 

/paper has at most four links 

/paper has a link to '/rock' with the text 'Play Rock' 

/paper has a link to '/paper' with the text 'Play Paper' 

/paper has a link to '/scissors' with the text 'Play Scissors' 

/paper has a link to '/' with the text 'Rules' 

/paper has each 'Play' link in their own `<div>` 

/paper has at least one secondary heading 

/paper has at least two secondary headings 

/paper has at most three secondary headings 

/paper has one secondary heading with the text 'We played paper!' 

/paper has one secondary heading with the text 'They played paper!' 

/paper has one secondary heading with the text 'We tied!' 

/paper has all elements in the right order 

/scissors renders an HTML page 

/scissors has the title 'You played scissors!' 

/scissors has at least one link 

/scissors has at least two links 

/scissors has at least three links 

/scissors has at most four links 

/scissors has a link to '/rock' with the text 'Play Rock' 

/scissors has a link to '/paper' with the text 'Play Paper' 

/scissors has a link to '/scissors' with the text 'Play Scissors' 

/scissors has a link to '/' with the text 'Rules' 

/scissors has each 'Play' link in their own `<div>` tag 

/scissors has at least one secondary heading 

/scissors has at least two secondary headings 

/scissors has at most three secondary headings 

/scissors has one secondary heading with the text 'We played scissors!' 

/scissors has one secondary heading with the text 'They played paper!' 

/scissors has one secondary heading with the text 'We won!' 

/scissors has all elements in the right order 

The home page renders an HTML page 

The home page has the title 'Rock-Paper-Scissors Rules' 

The home page has at least one link 

The home page has at least two links 

The home page has at least three links 

The home page has at most four links 

The home page has a link to '/rock' with the text 'Play Rock' 

The home page has a link to '/paper' with the text 'Play Paper' 

The home page has a link to '/scissors' with the text 'Play Scissors' 

The home page has each 'Play' link in their own `<div>` tag 

The home page has a heading with the text 'Welcome to Rock-Paper-Scissors!' 

The home page has a link with the text 'Wikipedia' 

The home page has a link with the text 'Wikipedia' 

The home page has a link to wikipedia with the text 'Wikipedia' 

The home page has a paragraph with the text 'From Wikipedia:' 

The home page has 'Wikipedia' as a link to `wikipedia.org` that opens in a new tab 

The home page has at least 1 paragraph tag 

The home page has at least 2 paragraph tags 

The home page has at least 3 paragraph tags 

The home page has at least 4 paragraph tags 

The home page has at least 5 paragraph tags 

The home page has at least 6 paragraph tags 

The home page has at least 7 paragraph tags 

The home page has at most 8 paragraph tags 

The home page has a paragraph with 'Rock-paper-scissors...' text 

The home page has a paragraph with 'These shapes are:' text 

The home page has one unordered list 

The home page has a unordered list with 3 list items 

The home page has a paragraph with text: 'A player who decides...' 

The home page has one table element 

The home page has one table element with a border of 1 

The home page has one table element with 5 rows 

The home page has a table column in the 1st row that spans 2 rows and 2 columns 

The home page has a table column in the 1st row that spans 3 columns with text 'and they play...' 

The home page has the 1st table column in the 2nd row with text 'Rock' 

The home page has the 2nd table column in the 2nd row with text 'Paper' 

The home page has the 3rd table column in the 2nd row with text 'Scissors' 

The home page has the 1st table column in the 3rd row span 3 rows & have text 'If we play...' 

The home page has the 2nd table column in the 3rd have text 'Rock' 

The home page has the 3rd table column in the 3rd row have text 'We tie' 

The home page has the 4th table column in the 3rd row have text 'We lose' 

The home page has the 5th table column in the 3rd row have text 'We win' 

The home page has the 1st table column in the 4th row have text 'Paper' 

The home page has the 2nd table column in the 4th row have text 'We win' 

The home page has the 3rd table column in the 4th row have text 'We tie' 

The home page has the 4th table column in the 4th row have text 'We lose' 

The home page has the 1st table column in the 5th row have text 'Scissors' 

The home page has the 2nd table column in the 5th row have text 'We lose' 

The home page has the 3rd table column in the 5th row have text 'We win' 

The home page has the 4th table column in the 5th row have text 'We tie' 

The home page has the whole HTML table displayed correctly 

The home page has a paragraph with text: 'Originating from China and Japan...' 

The home page has an image with rock paper scissors svg from the target 

The home page has a paragraph with text: 'A chart showing how...' 

The home page has an image with Kitsune-ken svg from the target 

The home page has a paragraph with text: 'Kitsune-ken was a...' 

The home page has an image with Japanese sansukumi-ken svg from the target 

The home page has a paragraph with text: 'Mushi-ken, the earliest...' 

The home page has all the elements in the right order. 

</details>


---

