# Before You Create An Issue For Vagrant WordpRess
-----
  Before submitting please **[search open and closed issues](https://github.com/denverprophitjr/vagrant-wordpress/issues "Search Open And Closed Issues For WordPress Vagrant")** to avoid duplication.

  Feel free to use the following as a template and remove or add fields as you see fit. You can convert `[ ]` into `[x]` to check boxes.


- [ ] This is a question about using the Wordpress Vagrant.
- [ ] This is a feature request for WordPress Vagrant.
- [ ] I have checked my vagrant version and am [up to date](#Environment-Information)
- [ ] I have tested locally with `bundle exec jekyll build`.
- [ ] I believe this to be a bug with the theme --- not Jekyll, GitHub Pages or one of the bundled plugins.

---
## Troubleshooting Steps For Vagrant WordPress
## Environment Information

<!--
  Please include theme version, `github-pages --version`, and the operating system you are on or tested with.
-->

- **Vagrant Version:** `x.xx`
  - `vagrant --version` 
- **Virtual Box Version:** `x.xx`
  - `VBoxManage --version`

- **Operating system:** `xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
  - `lsb_release -a`

---

## Expected behavior

Describe the intended output or what you expected to see. [Edit Me]

## Steps to reproduce the behavior

Include a link to a public repository or ZIP file so that they can more easily be reproduced. Being able to see your actual files helps troubleshooting as most issues stem from missing YAML Front Matter, a mis-configured `_config.sys` file, or `_posts` content.

Describe the steps you took for this problem to exist. Such as you cloned the theme, customized `_config.yml`, added your own posts, and started up a Jekyll server locally.

If an error occurred on GitHub Pages when pushing, please build locally and provide a complete log by running `bundle exec jekyll --trace --verbose` and including this output in the filed issue.

Screenshots can also be included if they help illustrate a behavior.
