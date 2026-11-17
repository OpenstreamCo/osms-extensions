# OpenStreamMS extensions

The official extension catalog of [OpenStreamMS](https://github.com/OpenstreamCo/OpenStreamMultiSeat).
OpenStreamMS reads `osms-catalog.json` from this repository; each extension lives in its own
folder under `extensions/`.

| Extension | What it does |
|---|---|
| [Sessions overview](extensions/sessions-overview) | A dashboard tab with every session and seat at a glance (and a minimal example of an extension tab). |
| [Steam Big Picture on start](extensions/steam-big-picture) | Opens Steam in Big Picture mode when a streaming session starts (example of a session hook run as the user). |
| [RDPAutoPatch (multi-RDP)](https://github.com/mlopezsegura/RDPAutoPatch) | Keeps the Remote Desktop service patched with TermWrap so Windows client editions accept several RDP sessions at once. Third-party: the Windows client license doesn't allow it; the supported route is Windows Server + RDS + user CALs. |

To write your own extension or catalog, see `docs/extensions.md` in OpenStreamMS. Extensions
run as SYSTEM: only install extensions from people you trust.
