# Demo video

For the Meta Global AI Developer Hackathon submission (due Nov 4, 9:00 PM ET).

`codicent-muse-demo.mp4`: 2:15, 1080p, narrated (Windows "Mark" voice) with
burned-in captions. Built on 2026-11-03 from real runs, not mock-ups:

| Step | What ran | Result |
|---|---|---|
| Install | `install.ps1` twice in a scratch repo (`demo-app`) | 6 files added, then all kept |
| Teach | `template/AGENTS.snippet.md` → `AGENTS.md`, committed | 10 lines |
| Read | `muse exec "Read the repo logbook and summarize the latest decisions."` on this repo | Read index + 6 entries; summarized 3 decisions with dates and links; no files changed |
| Write | `muse exec "Switch the config file from JSON to TOML (config.toml). Keep it dependency-free. Commit when done."` in `demo-app`, logbook never mentioned | Commit `7546576`: code change + `#decision` entry + index line |

Muse Code ran headless with provider `meta`, model `muse-spark-1.3-contributor`.
The Codicent slide shows the `#llmconfig` fields for Muse Spark 1.3
(`muse-spark-1.3`, `api.meta.ai/v1`, Chat Completions); no keys are shown.

Upload to YouTube as **Unlisted** (not Private, or judges can't watch), then
paste the link into the "3-Minute Demo Video" field.

## Narration

The voice is synthetic. To replace it with your own, read the captions; each
line below is one caption, in order.

1. Codicent Muse. One memory for every coding repo.
2. Every AI coding session starts from zero.
3. Decisions evaporate. Tacit knowledge lives in someone's head. And project history gets stuck in one vendor's format.
4. The next agent, even a smarter one, starts over.
5. Codicent Muse gives every repo one logbook: plain Markdown files, in git, that any model can read.
6. No plugin, no server, no lock-in. Muse Code built it, and Muse Code is its first user.
7. One command installs it in any repo: a memory contract, an index, and templates for decisions, releases and tacit knowledge.
8. Run it again, and nothing is overwritten.
9. Ten lines in AGENTS.md teach the agent the rule.
10. Read the logbook when you start. Write to it after you act.
11. Here is Muse Code, running on Muse Spark 1.3, in a fresh headless session on this project's own repo.
12. We ask it to read the logbook. It opens the index and six entries.
13. Then it summarizes the three decisions, newest first, with dates and a link to each file.
14. No plugin. No API key. No MCP server. Just files.
15. Now an ordinary coding request in a small demo app. We never mention the logbook.
16. Muse Code switches the config to TOML, checks that the app still works, and commits.
17. In the same commit, it writes a decision record and an index line.
18. The context, the three options it weighed, the trade-off it accepted, and the consequences.
19. That is the knowledge that usually disappears when the session ends.
20. The logbook is built to flow into Codicent, the shared memory for repos, ideas and projects.
21. Codicent already runs Muse Spark 1.3 through the Meta Model API, so a team can ask across all its repos what was decided, and why.
22. Built by Muse Code. Proven by Muse Code. Memory owned by git, not by a vendor.
23. Codicent Muse is open source, under MIT.
