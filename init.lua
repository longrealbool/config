package.path = package.path .. ";/user/esukhov/.config/nvim/?.lua"
require("user.plugins");
require("user.keys");
require("user.color");
require("user.options");
require("user.lsp");
