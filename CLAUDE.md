# factory-live-test

Throwaway repo for a live test of the factory pipeline. One POSIX sh script, no real users or data.

## Commands

- `sh test.sh`: run the tests.

## Gates

Hooks and CI come from gantry (`lefthook.yml`, `.github/workflows/ci.yml`).
A task is done only when the pre-push checks pass. Never use `--no-verify`.

## shinstack
shinstack-mode: auto
factory-concurrency: 2
factory-sensitive: false
