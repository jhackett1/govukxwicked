GOV.UK Frontend x Wicked x Rails
================================

Demo for a multi-step form wizard in Rails, using GOV.UK styling.

How I got here
--------------

To get GOV.UK Frontend up and running:

1. Run `npm init -y` and `npm i --save govuk-frontend`
2. Copy and paste the page template into application.html.erb
3. Paste following content into application.scss to import the css:

```
$govuk-images-path: "/assets/";
$govuk-fonts-path: "/assets/";
$govuk-font-url-function: "font-url";
$govuk-image-url-function: "image-url";

@import "govuk-frontend/all";
```

4. Add the assets folders in node_modules to the rails assets pipeline by adding the following content to config/initializers/assets.rb:

```
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('node_modules', 'govuk-frontend', 'assets', 'images')
Rails.application.config.assets.paths << Rails.root.join('node_modules', 'govuk-frontend', 'assets', 'fonts')

```

5. Add the javascript by adding `//= require govuk-frontend/all.js` to application.js