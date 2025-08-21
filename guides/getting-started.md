---
layout: base
title: Getting Starting with Xanthan
subtitle: A preliminary guide to sustainable and extensible project websites
author: Fred Gibbs
date: 2019-10-03
---

# {{page.title}}

## Build a website in 10 minutes

### Get a coppy of Xanthan
- Create an account at [GitHub](http://github.com/register). Make note of your GITHUB-USERNAME.
- Rather than create everything from scratch, start with a basic set of core files.  Go to the [xanthan repository](http://github.com/fredgibbs/xanthan)
- Click the green `Use this Template` button
- Name your repository, which we call REPOSITORY below. You can always rename it later or delete it and start over.
- Click the green `Create Repository` button in the lower right.

### Enable GitHub Pages for your new repo
- Click on the  `Settings` tab in the upper right of the nav bar. 
- On the left, click the link for `Pages`.
- Near the top, under the Build & Deployment section, under `Source`, the `Deploy from a Branch` should be selected.
- Directly below, under `Branch`, change from `None` to `main`.
- Click the `Save` button that appears on that same line.

### Edit a config file
- If you named your repository something other than `xanthan`:
- Click the `Code` tab near the top left
- Edit _config.yml file to have the same `baseurl` as your repository name. 
- Your site is now being built, and you can see the status via the Actions tab.
- Refresh the page every few minutes, and you'll get a link to your site.  
  - The URL that appears there in the form of http://GIHUB-USERNAME.github.io/REPOSITORY/. Replace GITHUB-USERNAME with your GitHub username, and REPOSITORY with your repository name. Your final URL should loook like http://fwgibbs.github.io/xanthan

### Congratualtions! 
You've made a website! 

Now you're ready the explore the components of your site. Let's start with [Understanding Folders](understanding-folders).

