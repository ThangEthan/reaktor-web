<h1>Magic the Gathering assignment – Instructions</h1>

Here we go. Your task is to build an interactive, hyperlinked rulebook application for a card game, of which rules are described in rules.txt.

<b>When submitting your solution, your application must:</b>
<ul>
<li>Have a web frontend</li>
<li>Include a Table of Contents with hyperlinks to chapters containing game rules. For instance, “100. General” is a chapter</li>
<li>Display the selected chapter beside the Table of Contents, containing all rules in that chapter. For instance, “100.2a” is a rule</li>
<li>Include a search box for filtering the rules displayed on the page, so that you can, for instance, type “commander” and find all rules that mention the word “commander”</li>
</ul>

<h1>Documentation</h1>

JQuery send GET request to the API server and recieved 2 JSON objects: data (JSON format of rules.txt), chapter (all chapter in JSON format).
<ul>
  <li>data is used to render table of content and further inspection.</li>
  <li>chapter is used to render rule when a chapter is clicked in table of content.</li>
</ul>
Elements are rendered dynamically, thus, event has to attached using <a href="https://api.jquery.com/on/#on-events-selector-data-handler">.on()</a>
