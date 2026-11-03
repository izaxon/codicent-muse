# Demo video: 3-minute script

For the Meta Global AI Developer Hackathon submission (due Nov 4, 9:00 PM ET).
Judges weigh the video heavily. Show real runs only; if a step misbehaves on
camera, re-record that step rather than editing the result.

Upload to YouTube as **Unlisted** (not Private, or judges can't watch), then
paste the link into the "3-Minute Demo Video" field.

## Before you record

- [ ] Scratch repo `demo-app` with a few real commits and **no** `.codicent/`.
- [ ] `codicent-muse` cloned next to it (`..\codicent-muse`).
- [ ] Muse Code ready in `demo-app`, fresh session.
- [ ] Codicent open in a browser tab, assistant set to a Meta model (Muse Spark),
      in a project where you have already posted the demo repo's logbook entries (sync is manual today; the CLI store convergence is still open).
- [ ] Browser tabs: https://izaxon.github.io/codicent-muse/ and
      https://github.com/izaxon/codicent-muse
- [ ] Terminal font large (18pt+), notifications off, 1080p capture.

## Script

| Time | On screen | Say (roughly) |
|---|---|---|
| 0:00–0:20 | Docs site hero | "Every AI coding session forgets. Why we chose this library, what we tried and dropped, what only one teammate knows: gone when the session ends, or stuck in one vendor's format. The next agent starts from zero." |
| 0:20–0:40 | Repo README | "Codicent Muse gives every repo one memory: a logbook of plain Markdown files, in git, that any model can read. Muse Code built it, and Muse Code is its first user." |
| 0:40–1:05 | Terminal in `demo-app`: run `..\codicent-muse\install.ps1`, then `tree .codicent` | "One command. A contract, an index, templates for decisions, releases and tacit knowledge." Run it again: "Run it twice and nothing is overwritten, so it's safe in any repo." |
| 1:05–1:20 | Append `template/AGENTS.snippet.md` to `AGENTS.md`, commit | "Fifteen lines in AGENTS.md teach the agent the rule: read the logbook when you start, write to it after you act." |
| 1:20–2:00 | Fresh Muse Code session: *"Read the repo logbook and summarize the latest decisions."* | Let the answer appear. Point at dates and file links. "No plugin, no API key, no MCP server. Just files, and Muse Code follows them." |
| 2:00–2:30 | Ask Muse Code for a small real change (for example, *"switch the config loader to TOML"*). Show `git diff` | "It makes the change and, in the same commit, writes a decision entry and an index line: what was decided, the options, and why. That's the tacit knowledge that usually lives in someone's head." |
| 2:30–2:50 | Codicent tab, Meta model selected: *"What did we decide about the config format, and why?"* | "The same entries live in Codicent too. Codicent now runs on Meta's models through the Meta Model API, so you can ask across all your repos, ideas and projects." |
| 2:50–3:00 | GitHub repo, MIT badge, docs URL | "Open source, MIT. One memory for every repo and every agent. Codicent Muse." |

## Tips

- Pre-type the prompts and paste them; don't type live.
- If the Muse Code answer is long, speed that section up 2x in editing; keep
  the moment the answer starts and the citations readable.
- Keep the recording under 3:00. Judges stop at the limit.
