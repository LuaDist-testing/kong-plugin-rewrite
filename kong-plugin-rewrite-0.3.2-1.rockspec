-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-rewrite"
version = "0.3.2-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "rewrite"

supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "0.3.2-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-rewrite.git"
}
-- Original source
-- source = {
--   -- these are initially not required to make it work
--   url = "git://github.com/andy-zhangtao/rewrite",
--   tag = "v0.3.2",
--   branch="master"
-- }

description = {
  summary = "Kong Plugin Rewrite use for rewrite querst temporary.",
  homepage = "https://github.com/andy-zhangtao/rewrite",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
  }
}