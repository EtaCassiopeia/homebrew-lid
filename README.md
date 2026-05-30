# homebrew-lid

Homebrew tap for [lid-tooling](https://github.com/EtaCassiopeia/lid-tooling) — the CLI and MCP server for [Linked-Intent Development](https://github.com/jszmajda/lid).

## Install

```sh
brew tap EtaCassiopeia/lid
brew install lid
```

This installs three binaries:

| Binary | Purpose |
|---|---|
| `lidc` | CLI — `lidc check`, `lidc init`, CI hook |
| `lid-mcp` | MCP server — connect AI agents (Claude, Cursor) to your LID project |
| `lid-lsp` | Language server — for editors other than VS Code |

## VS Code users

The VS Code extension bundles `lid-lsp` automatically — no Homebrew install needed for the editor.
Search **LID** in the Extensions panel, or:

```
ext install lid-tools.lid
```

## MCP configuration

After installing, add `lid-mcp` to your MCP client config:

**Claude Desktop** (`~/Library/Application Support/Claude/claude_desktop_config.json`):
```json
{
  "mcpServers": {
    "lid": {
      "command": "lid-mcp"
    }
  }
}
```

**Cursor / VS Code** (`.mcp.json` at project root or in settings):
```json
{
  "servers": {
    "lid": {
      "type": "stdio",
      "command": "lid-mcp"
    }
  }
}
```

## Updating

```sh
brew update && brew upgrade lid
```
