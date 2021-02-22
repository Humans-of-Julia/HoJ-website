# Paths setup
content_ = "content"
site = "docs"

# import Pkg and install StaticWebPages # comment if not on CI
import Pkg
Pkg.add("StaticWebPages")

# import the website generator functions
import StaticWebPages
import StaticWebPages: local_info

## private informations (local folders, connection infos, etc.)
# content and site paths are always required
local_info["content"] = content_
local_info["site"] = site

## export site to local folder
# `rm_dir = true` will clean up the site folder before generating it again. Default to false.
# `opt_in = true` will add a link to this generator website in the side menu. Default to
StaticWebPages.export_site(rm_dir = false, opt_in = true)

## upload website (comment/delete if not needed)
# TODO: make it automatic with GitHub pages
