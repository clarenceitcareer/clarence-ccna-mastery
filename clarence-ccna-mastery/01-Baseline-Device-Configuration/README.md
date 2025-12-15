# 01 – Baseline Device Configuration

Backbone of the program. Every enterprise network starts here.

**Order enforced (real-world precedent):**
1. `enable`
2. `configure terminal`
3. Hostname
4. Domain name
5. Local admin user (secret)
6. RSA key generation
7. SSH version enforcement
8. VTY hardening (SSH-only, local login)
9. Console hardening
10. Legal banner
11. Save & verify

Artifacts:
- `topology/` Packet Tracer lab
- `configs/` raw configs
- `verification/` show output proving it works
- `failure-notes.md` misconfigs + fixes
