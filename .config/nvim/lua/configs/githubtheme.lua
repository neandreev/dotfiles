local status_ok, githubtheme = pcall(require, "github-theme")
if not status_ok then return end
githubtheme.setup(astronvim.user_plugin_opts("plugins.github-theme", {
  comment_style = "NONE",
}))
