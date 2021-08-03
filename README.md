# Magic the Gathering assignment – Instructions

Here we go. Your task is to build an interactive, hyperlinked rulebook application for a card game, of which rules are described in <a href="https://media.wizards.com/2021/downloads/MagicCompRules%2020210419.txt">rules.txt</a>.

**When submitting your solution, your application must:**

* Have a web frontend
* Include a Table of Contents with hyperlinks to chapters containing game rules. For instance, “100. General” is a chapter
* Display the selected chapter beside the Table of Contents, containing all rules in that chapter. For instance, “100.2a” is a rule
* Include a search box for filtering the rules displayed on the page, so that you can, for instance, type “commander” and find all rules that mention the word “commander”


# Documentation

### HTML
1. API_URL is read from the generated env.js file for a more dynamic behaviour.<br>
2. JQuery send GET request to the API server and recieved 2 JSON objects: data (JSON format of rules.txt), chapter (all chapter in JSON format).

* data is used to render table of content and further inspection.
* chapter is used to render rule when a chapter is clicked in table of content.
  
3. Elements are rendered dynamically, thus, event has to be attached using <a href="https://api.jquery.com/on/#on-events-selector-data-handler">.on()</a>

### Docker
1. Docker image use httpd as the base.
2. On start up startup.sh will be executed. startup.sh will write the passed API_URL environment variable into env.js. If API_URL is not set, image will not be able to run.
