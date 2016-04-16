# jquery-workshop

## How to Use this workshop

1. Git clone this repo: ''
2. Open 'workspace.html' in a web browser.
3. Open the Developer Tools and enter jQuery commands in the **Console** to complete the list of tasks.
4. Mark each task 'Complete when you are finished'.
5. Be Careful! Refreshing the page will erase all of your completed work and force you to restart.

## Instructions

For those already familiar with jQuery, the Developer Tools, and using the JavaScript Console, skip to the section titled **Workshop** for a link to the [List of jQuery Challenges](/index/).

### What is jQuery

**jQuery** is a **JavaScript** library that is used to manipulate markup (**HTML**) and alter styles (**CSS**) on a webpage. If you have never worked with **HTML** and **CSS** before, there will be some parts of this workshop that may confuse you, but that's okay. For the exercises below, all you need to know is that **HTML** represents the *content*, or what is on the page, and **CSS** represents *appearance*, or how the content will look.

**jQuery** is a set of methods (= pre-programmed actions) written in **JavaScript** that let you quickly make changes to the content of a web page and how it looks. Everything you can do in **jQuery** can be done in a more verbose way in **JavaScript**. **jQuery** is essentially a series of shortcuts and abbreviations that are easier to read and simpler to type than writing plain old **JavaScript**.

Some things you can do with **JavaScript**/**jQuery** are:

- Add, change, and remove any content on a page (text, images, links, all the content)
- Change any of the CSS styles on the page (make everything look different)
- React to all existing events in the page (events = mouse movements, button clicks, keyboard presses)
- Create new events in the page (make different things happen when you click, type, move the mouse, etc.)

The benefits of **jQuery** are:

1. It is written in **JavaScript**, which web browsers are optimized to run fast.
2. It's super easy to use. Basically, just type '$' and you're **jQuerying**
3. It allows you to make changes to one part of a page without reloading the whole page.

### What are the Developer Tools

Web Browsers (Chrome, Safari, Firefox, IE, etc) are designed to run JavaScript code quickly and efficiently. The easiest way to start using jQuery is with the developer tools that are already installed in your web browser.

The developer tools are a set of applications embedded into your web browser that let you analyze, alter, debug and test code. Learning to use the developer tools is one of the first steps to becoming a front-end web developer, and one of the most important beginner skills you can master.

> Note: CodeSchool has a great [tutorial](http://discover-devtools.codeschool.com/) on using the Google Chrome DevTools, which shows you the many ways they can assist you as a developer.

### Using the Developer Tools to Inspect a Web Page

In order to write jQuery in your web browser (Chrome, Safari, Firefox, IE, etc), navigate to any webpage by typing a URL in your address bar. Once the page has loaded, right click the content (text, images, white space, anywhere) to open the popup menu and click **'Inspect'**. The Developer Tools should pop open in the window.

> Note: In Chrome, you can type **'SHIFT'** + **'CMD'** + **'C'** to open the tools. You can also use the menu bar at the top of the screen and select **View** => **Developer** => **Developer Tools** to open the developer panel.

There are several tabs in the developer panel, but today we will only use three of them to manipulate a page with jQuery: **Elements**, **Styles**, and **Console**.

### Your First jQuery

#### In 7 Steps:

1. Click [this link](/name/) to open the Name exercise in a new tab.
2. Right click and select **'Inspect'** to open the Developer Tools.
3. Click on the **Console** tab to open the **JavaScript** console.
4. In the terminal, you should see a '\>' and a blinking cursor.
5. After the \>, type the **jQuery** command:

`$('#my-name').text('YOUR NAME');`

6. The output that should be returned from that command is something like:

`[<div id="my-name">'YOUR NAME'</div>]`

7. You're done. You just wrote your first **HTML** page query with **jQuery**!

#### Breaking It Down:

Now, let's break down the command you typed:

- *$* is the universal symbol for jQuery. What *$()* does is tell your browser, "get me the page and prepare to look for whatever I type inside *()*"
- Inside the *()* you wrote *'#my-name'*. *#* is the abbreviation for an element's *id*. So *'$('#my-name')'* means, "get me whatever element on the page has the *id* of 'my-name'"
- *.text()* retrieves whatever text is inside an **HTML** element. Calling *.text('YOUR NAME')* sets the text of an element to whatever is inside the *()*.
- The semicolon (*;*) is used to separate statements in JavaScript. It is not required for your code to work, but writing semicolons at the end of certain lines is a standard convention in JavaScript (semicolon enthusiasts: read more [here](https://www.codecademy.com/blog/78))

As a last step, try entering the following into the console:

`$('#my-name').text();`

You should see the output:

`"YOUR NAME"`

You will notice that this time calling *.text()* returned the text that was inside the '#my-name' element. That is because jQuery knows to get you the element's text if you don't write anything inside the *()*, and set the element's text if you do write something. The ability to use the same method for different purposes--in this case as a *getter* and a *setter* of an element's text is a key feature of JavaScript.

#### Using the Elements tab to Find id's and Other CSS Attributes

After running the command above, you may be wondering how I knew that *'my name'* was the id for the element containing the text "WRITE YOUR NAME HERE".

The best way to inspect a page for attributes such as ids is to go to the **Elements** tab of the Developer Tools. Depending what browser you are using and how you accessed the Developer Tools, your page might not look like mine but you should see something like:

`<!DOCTYPE html>
<html>
  <head>...</head>
  <body>...</body>
</html>`

Click the triangle next to <body>...</body>. This should open up an indented outline of all the **HTML** elements on the page. For example, directly underneath <body> you will see:

`<div class="container">
  <h4>...</h4>
  <div class="challenges">...</div>
  ...
</div>`

If you click the triangle next to <div class="challenges">...</div> to view the elements inside, you should see a *h4* (= heading, type 4) element with an *id* of *'my name'* that looks like this:

`<h4 id="my-name">WRITE YOUR NAME HERE</h4>`

This is the element that you targeted with your first jQuery command. By using the *id 'my-name'*, you were able to find it on the page with jQuery, return the text inside the *h4* element, and change the text to your name.

>Note: This is the part that might get complicated if you are not familiar with HTML. Remember, the **HTML** is *what is on the page*. The Developer Tools' **Elements** tab shows you an outline of all the content on the page, represented in a tree structure of nested elements.

>Elements are denoted by **HTML** tags, the text in between '<>' and '</>', and most elements need an opening and a closing tag. '<>' is an opening tag and "</>" is a closing tag.

>Each element on a page is like a small box that holds a specific piece of content. Larger elements like headings (*<h1></h1>*), paragraphs (*<p></p>*), and divs (*<div></div>*) contain text and smaller elements like links (*<a></a>*), images (*<img></img>*), and spans (*<span></span>*).

#### Round 2: Changing CSS attributes with jQuery

Let's try another one.

1. First navigate to the [Colors](/colors/) challenge. Inspect the page and open the **Elements** tab.
2. In the **Elements** tab, click the triangle next to <body>...</body>.
3. Then click the triangle next to: <div class="container">...</div>
4. Finally, click the triangle next to: <div class="challenges">...</div>
5. Inside *<div class="challenges">...</div>* you should see a *h2* (= heading, type 2) element with an *id* of *'make-my-background-yellow'*. Great, so now we know what element to target with jQuery in the Developer Tools **Console**.
6. Switch to the **Console** tab.
7. Let's try something similar to what we did with *.text()*, but this time we'll try *.backgroundColor()*, which seems to follow the same logical pattern.

In the **Console** tab, next to the '\>', type the following into the terminal:

`$('#make-my-background-yellow').backgroundColor('yellow');`

8. After running the command you should see a red error:

`"Uncaught TypeError: $(...).color is not a function(…)"`

This error means that jQuery does not recognize *.color()* as a valid method. Although it is often possible to guess which method might perform a certain action based on our knowledge of how jQuery works, sometimes things don't work as we predict. We need to investigate beyond our intuition to accomplish this task.

9. Let's back up and reexamine the problem. When we are changing the *content* of the page (**HTML**), we can use the *.text()* method. But when we are changing the *style* of a page, we need to use the *.css()* method, which .

Looking at the [documentation for the *.css* method on the W3 Schools](http://www.w3schools.com/jquery/jquery_css.asp), they provide a helpful example of how to set a background color with jQuery:

`$("p").css("background-color", "yellow");`

10. The first thing inside quotations (*""*) within the parenthesis *()* is the attribute 'background-color', and the second is the color value, 'yellow'. This code will almost work for us, but we need to modifying the *$()* method call to use the *id* of the element we want to target, the *h2* element with the *id* of 'make-my-background-yellow'

11. Back in the Developer Tools **Console** tab, let's run our jQuery command:

`$('#make-my-background-yellow').css("background-color", "yellow");`

12. Great! That worked! Second jQuery accomplished.

#### Changing CSS with the Styles Tab

One last point: the Developer Tools **Styles** tab. This tab shows all of the **CSS** attributes that are being applied to a certain **HTML** element (color, height, font weight, size, background-color, etc.)

In order to see the **Styles** tab in action, switch back to the **Elements** tab. You should see the **Styles** tab in the same pane.

In the **Elements** tab, find the element labeled:

`<h2 id='#make-my-background-yellow'>Make My Background Yellow!</h2>`

Click on the element and you should see this text in the **Styles** tab:

`#make-my-background-yellow {
    background-color: white;
    width: 50%;
}`

The code above is **CSS**. Everything inside the *{}* are the style attributes for the '#make-my-background-yellow' element.

As you can see, the 'background-color' attribute has a value of 'white'. If you click on the word 'white' in the **Styles** tab, you can edit that text and type 'yellow' to change the background color directly.

Even though you can accomplish all of the jQuery challenges that involve **CSS** by directly editing the **CSS** in the **Styles** tab, for the purposes of the workshop you should use the **Styles** tab for clues on write when you use *.css()* to change an element's appearance.

#### Workshop

Now that we've done a few examples together, here are a few exercises to try on your own: [List of jQuery Challenges](/index/)

#### Conclusion

Hopefully you were able to complete some of the exercises and become familiar entering the Developer Tools and making page queries with jQuery.

One thing that you may have noticed is no matter what changes you make to a page with jQuery, refreshing that page destroys all of your changes and reverts back to the original version.

The reason for this is that once you refresh a page, your browser loads whatever is stored on the web application's server. Since we are not doing anything to store the results of our jQuery commands in a database on a server, the temporary memory that your browser uses to run **JavaScript** is cleared and when the page reloads you are given a blank slate in the **JavaScript Console** to run commands.

Therefore, the Developer Tools are a great way to test out code, play with ideas, and debug your code to see what is and isn't working the way you want it to. But in order to make your changes to the page permanent, the next step is to leave the **Console** and begin writing **JavaScript** that communicates with servers and stores the results of the code it executes into a database.
