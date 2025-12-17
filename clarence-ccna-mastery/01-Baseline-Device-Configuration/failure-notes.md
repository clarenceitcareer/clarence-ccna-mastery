# Failure Notes – Baseline

Remote management to the switch failed from a different subnet.

## Symptom
Ping and SSH attempts to the switch management IP failed when initiated from outside the local subnet, while local switching continued to operate normally.

## Root Cause
The Layer 2 switch did not have a default gateway configured, so it could not send replies for its own management traffic to destinations outside the local subnet.

## Fix
Configured the switch default gateway to the router IP for the management VLAN using the ip default-gateway command.

## Verification
After configuring the default gateway, ping and SSH from a remote subnet succeeded, and verification commands confirmed the default gateway and management SVI were correctly configured and persistent.
