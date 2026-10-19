# Contributing to NOERITH

Thank you for helping improve NOERITH projects. Contributions should be focused, reproducible, and easy to review.

## Before you start

- Search existing issues and pull requests before opening new work.
- For a significant change, open an issue first and agree on the scope.
- Never commit credentials, tokens, private data, generated secrets, or production exports.
- Keep changes small enough to review and explain the user or system impact.

## Branches

Use a short branch name with one of these prefixes:

- feat/short-description
- fix/short-description
- docs/short-description
- refactor/short-description
- chore/short-description
- security/short-description

Protect the main branch. Changes should arrive through a pull request.

## Commits

Prefer an imperative, conventional prefix:

- feat: add a capability
- fix: correct a defect
- docs: improve documentation
- refactor: change structure without changing behavior
- test: add or improve tests
- chore: maintain tooling or dependencies
- security: harden a control or remediate a finding

Keep the subject concise and explain important trade-offs in the body.

## Pull requests

A pull request should include the problem, the approach, validation evidence, and any operational or security impact. Add or update tests and documentation when behavior changes. Resolve review conversations before merge and keep the branch current with main.

## Local verification and automation

NOERITH repositories do not configure automatic CI until the user explicitly requests it. Run the relevant local verification commands and include their results in the pull request; independent review and applicable branch policies still apply. Keep manual release publishing and administrative automation separate from CI. Retained CI records remain historical evidence for their original source.

## Versioning and releases

Use Semantic Versioning for published software: MAJOR for incompatible changes, MINOR for backward-compatible features, and PATCH for backward-compatible fixes. Each release should include a concise changelog, validation status, known limitations, and migration notes when relevant.

## Review standard

Reviewers look for correctness, security, testability, maintainability, clear ownership, and evidence that the change works in its intended environment.
