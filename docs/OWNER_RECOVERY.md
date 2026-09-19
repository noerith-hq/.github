# Owner Recovery Procedure

This procedure documents how NOERITH should recover organization ownership without placing recovery secrets in a repository.

## Prepare before an incident

- Keep two independent secure sign-in methods on the owner account, such as an authenticator app plus a passkey or security key.
- Generate GitHub recovery codes and store them outside GitHub in an encrypted password manager or an offline encrypted backup.
- Never commit, paste, or attach recovery codes to issues, pull requests, logs, or this repository.
- Review organization owners and the security log periodically.
- Add a trusted backup owner before the organization holds important production assets or has multiple active maintainers.

## If the owner loses a primary 2FA device

1. Sign in to the owner account with a configured passkey, security key, GitHub Mobile method, or one recovery code.
2. Replace the lost authenticator or device from the account security settings.
3. Generate a fresh set of recovery codes and invalidate the old set.
4. Confirm that the owner still has access to the organization and that the organization 2FA requirement remains enabled.
5. Review active sessions, OAuth applications, personal access tokens, SSH keys, and the organization audit log.
6. Rotate any credential that may have been exposed with the lost device.

## If the only owner is unavailable

Use GitHub's account recovery and organization support path. Do not attempt recovery through a public issue or by sharing private credentials with another person. A designated backup owner should verify the organization audit log, membership, billing, secrets, and repository permissions after access is restored.

## After recovery

Record the incident date, affected access method, controls reviewed, and follow-up actions in a private incident record. Do not record recovery codes or other authentication secrets in that record.
