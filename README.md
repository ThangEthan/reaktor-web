![DEMO](https://s6.gifyu.com/images/final920261d1b4df5404.gif)

# Magic the Gathering assignment – Instructions

Here we go. Your task is to build an interactive, hyperlinked rulebook application for a card game, of which rules are described in <a href="https://media.wizards.com/2021/downloads/MagicCompRules%2020210419.txt">rules.txt</a>.

**When submitting your solution, your application must:**

* Have a web frontend
* Include a Table of Contents with hyperlinks to chapters containing game rules. For instance, “100. General” is a chapter
* Display the selected chapter beside the Table of Contents, containing all rules in that chapter. For instance, “100.2a” is a rule
* Include a search box for filtering the rules displayed on the page, so that you can, for instance, type “commander” and find all rules that mention the word “commander”

# Documentation

### HTML
1. API_URL is read from the generated env.js file for a more dynamic behaviour.
2. JQuery send GET request to the API server and recieved 2 JSON objects: data (JSON format of rules.txt), chapter (all chapter in JSON format).
* data is used to render table of content and for further inspection.
* chapter is used to render rule when a chapter is clicked in table of content.
3. Elements are rendered dynamically. Each element has its own id, class, and attribute.
4. Click event on dynamically rendered elements is attached using <a href="https://api.jquery.com/on/#on-events-selector-data-handler">.on()</a>. 
5. Hyperlink between rule is created by replace specific pattern with an \<a\> tag. Click on these will anchor to the rule.

### Docker
1. Docker image use httpd as the base.
2. On start up startup.sh will be executed. startup.sh will write the passed API_URL environment variable into env.js. If API_URL is not set, image will not be able to run.

### Hosting
Application is hosted in AWS using Elastic Beanstalk or Elastic Kubernetes Services.

For EB run:
```bash
eb init;
eb create;
eb deploy;
```
For EKS, YAML config file can be found <a href="https://github.com/ThangEthan/reaktor-kube/blob/master/web.yaml">here</a>.

Although you may be served with unsecure http, https version of the application is available.

### Auto deployment 
Application will be automatically deploy to Elastic Beanstalk when new code is pused to master branch

### Argo
This is webhook test. Only push please.
test
