# octiq-zig-build-test

Zig fixture with a real build step (`zig build`), pinned to 0.14.1 via
`.zig-version`. No tests: sync only asks whether the tree builds.

Used to exercise the indexed tier's sync build verdict:

* import → baseline is green
* push a commit that breaks `src/main.zig` → one `INDEXED_BUILD_FAILED` mail
* push the fix → "build is green again"
