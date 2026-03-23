# DepGuard Test Target

This repository contains **intentionally outdated and vulnerable dependencies** for testing [DepGuard](https://github.com/truxt-ai/depguard).

## What's here

- `package.json` — Node.js deps pinned to old versions (express 4.17.1, lodash 4.17.20, axios 0.21.1, etc.)
- `requirements.txt` — Python deps pinned to old versions (requests 2.25.1, django 3.2.0, etc.)
- `index.js` — Minimal Express app

## Purpose

DepGuard scans this repo, detects outdated packages and known CVEs, and opens PRs with updates.

**Do not manually update dependencies** — they are intentionally old.
