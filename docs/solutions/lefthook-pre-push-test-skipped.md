# lefthook run pre-push shows "test (skip) no matching push files"

**Problem:** `lefthook run pre-push` prints `test (skip) no matching push files` and finishes with a summary, so the run looks clean but `sh test.sh` never ran.
**Cause:** lefthook runs the pre-push `test` command only when there are push files to match. On a clean tree with nothing to push, the step is skipped, and the summary doesn't count that as a failure.
**Fix:** Run `sh test.sh` directly and read its output. Report `tests passed` as the test evidence. Don't report `lefthook run pre-push` as a passing test unless its output shows `test` ran.
**Seen in:** #2, PR #3 (the build station cited `✔️ test` from lefthook; the verify station got `test (skip)` from the same command on the same head).
