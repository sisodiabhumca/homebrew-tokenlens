# homebrew-tokenlens

Homebrew tap for [TokenLens](https://github.com/sisodiabhumca/tokenlens) — a
token-aware observability and filtering layer for AI coding agents (Claude Code,
Codex CLI, Cursor, ChatGPT, Perplexity Computer, and the Vercel AI SDK).

## Install

```bash
brew tap sisodiabhumca/tokenlens
brew install tokenlens
```

Or in one line:

```bash
brew install sisodiabhumca/tokenlens/tokenlens
```

## Bump the formula

When a new TokenLens version ships, regenerate this formula from the release's
`SHA256SUMS` artifact:

```bash
curl -fsSL https://github.com/sisodiabhumca/tokenlens/releases/download/vX.Y.Z/SHA256SUMS \
  -o /tmp/SHA256SUMS
# update version + sha256 lines in Formula/tokenlens.rb, then commit & push
```

## License

MIT — see the upstream repo.
