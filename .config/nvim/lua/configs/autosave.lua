local status_ok, autosave = pcall(require, "autosave")
if not status_ok then return end
autosave.setup(astronvim.user_plugin_opts("plugins.autosave", {
}))
