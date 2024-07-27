use zed_extension_api::{self as zed, Command, Extension, LanguageServerId, Result, Worktree};

struct BlueprintExtension;

impl BlueprintExtension {
    fn lsp_path(&mut self, lsp_id: &LanguageServerId, worktree: &Worktree) -> Result<String> {
        if let Some(path) = worktree.which("blueprint-compiler") {
            return Ok(path);
        } else {
            return Err(String::from("blueprint-compiler not found."));
        }

        // TODO: Check if zed::latest_github_release can retrieve releases from gitlab, and if not, create a workaround
    }
}

impl Extension for BlueprintExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &Worktree,
    ) -> Result<Command> {
        Ok(Command {
            command: self.lsp_path(language_server_id, worktree)?,
            args: vec![String::from("lsp")],
            env: Default::default(),
        })
    }
}

zed::register_extension!(BlueprintExtension);
