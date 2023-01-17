## Our Recommendations

### Pull Requests
1. Every PR should contain a specific description (i.e., commit message).
2. If the PR contains new tests or changes existing benchmarks please provide some results in the comments.
3. Irrelevant code changes (e.g., adding a comment, or fixing a typo) might not necessarily need a PR.

### Benchmarks
1. Provide comments when the intention of the benchmark is not quite obvious. Some tests might use tricks or target specific optimizations, in such a case further details are needed.
2. Avoid unnecessary language features (e.g., val, sealed classes, records) that might couple the tests to specific JDK versions, reducing the changes to easily run them on previous JDK versions.