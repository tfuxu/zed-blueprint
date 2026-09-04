use zed_extension_api::{self as zed, LanguageServerId, Result};

struct BlueprintExtension;

impl BlueprintExtension {
    fn lsp_path(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<String> {
        if let Some(path) = worktree.which("blueprint-compiler") {
            return Ok(path);
        } else {
            return Err(String::from(
                "blueprint-compiler binary not found. Make sure you have it installed on your host or that you have set a custom binary path.",
            ));
        }

        // TODO: Check if zed::latest_github_release can retrieve releases from gitlab, and if not, create a workaround
    }
}

impl zed::Extension for BlueprintExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        Ok(zed::Command {
            command: self.lsp_path(language_server_id, worktree)?,
            args: vec![String::from("lsp")],
            env: Default::default(),
        })
    }
}

zed::register_extension!(BlueprintExtension);
