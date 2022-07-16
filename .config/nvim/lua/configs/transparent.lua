local status_ok, nvimtransparent = pcall(require, "transparent")
if not status_ok then return end
nvimtransparent.setup(astronvim.user_plugin_opts("plugins.transparent", {
  enable = true,
}))
