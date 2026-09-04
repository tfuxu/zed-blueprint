# Blueprint (.blp) support for Zed

[![Zed Extension][zed-extension-badge]][zed-extension-url]
[![License][license-badge]][license-url]

[zed-extension-badge]: https://img.shields.io/badge/Download%20in%20Zed-%230951CF?style=flat&logo=zedindustries&logoColor=white&labelColor=black
[zed-extension-url]: https://zed.dev/extensions/blueprint
[license-badge]: https://img.shields.io/badge/License-GPL%203.0-red?style=flat&labelColor=black&color=red
[license-url]: #license

[Blueprint](https://gnome.pages.gitlab.gnome.org/blueprint-compiler/) language support for Zed editor.

> [!WARNING]
> For the LSP features to work, `blueprint-compiler` must be installed on the system via package manager or by pointing to the custom binary path (see [Custom LSP binary](#custom-lsp-binary))

## Custom LSP binary
If you want to use a custom `blueprint-compiler` installation, you can specify `binary.path` and `binary.arguments` in `settings.json`:
```json
"lsp": {
  "blueprint": {
    "binary": {
      "path": "/path/to/blueprint-compiler/blueprint-compiler.py",
      "arguments": ["lsp"]
    }
  }
}
```
The `path` has to be an absolute path, and `arguments` must be set to `lsp`.

## Development

To develop this extension:

1. Clone this repository
2. Follow the [_Developing an Extension Locally_](https://zed.dev/docs/extensions/developing-extensions#developing-an-extension-locally) section of the _Developing Extensions_ guide from Zed Docs

## License

<p>
<img src="https://www.gnu.org/graphics/gplv3-with-text-136x68.png" alt="GPLv3 logo" align="right">
This repository is licensed under the terms of the GNU GPLv3 license. You can find a copy of the license in the LICENSE file.
</p>

Some of the queries used in this extension [(see here)](https://github.com/tfuxu/zed-blueprint/tree/master/languages/blueprint) originate from the MIT-licensed [tree-sitter-blueprint](https://github.com/smrtrfszm/tree-sitter-blueprint) project.
