# RPS HTML

Your goal is to create a website that looks and works like this one:

http://rps-html-target.herokuapp.com/

It's a pretty bad game right now — the computer always plays the same moves. We'll make it smarter soon.

For now, we're just trying to learn how to make the pages _look_ the way we want.

## Standard Workflow

 1. Set up the project: `bin/setup`
 1. Start the web server by clicking "Run Project".
 1. Navigate to your live application preview.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**
 1. Run `rails grade` as often as you like to see how you are doing, but **make sure you test your app manually first to make sure it matches the target's behavior first**.

## Setup

 - Click through that and then you may see a page that says "Yay! You’re on Rails!". That means your server started up successfully. We now need to start building some pages.
 - Create a file in the `/public` folder called `rock.html`. In that file, enter some text — you know what it should say by now:

    ```html
    Hello, world!
    ```
 - In your live application, navigate to the URL that you just built — add `/rock` onto the end of the homepage URL. It will look something like this:

    ```
    https://rps-html-demostudent8.c9users.io/rock
    ```

    , assuming that you named your workspace `rps-html`; but your own username will be where you see `demostudent8`.

    Congratulations! Your very first web page. As you update the source code with more stuff, be sure to save the source code first and then refresh the live app in Chrome to see the new version.

## Your job

 - Now your job is to, page by page, make your application match [the target](http://rps-html-target.herokuapp.com/rock).
 - Use the [HTML Reference Chapter](https://chapters.firstdraft.com/chapters/771) to try and find elements that will help.
 - When you get to the rules page, here are the URLs of the images:
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png)
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg)
    - [https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg)
 - When you are making links to pages, you can either put in the entire URL (the _absolute URL_):

    ```
    href="https://rps-html-demostudent8.c9users.io/rock"
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

## Next up

In [the next project](http://rps-css-target.herokuapp.com/), we'll learn how to take the content that we've tagged up with HTML and add some style with CSS.

