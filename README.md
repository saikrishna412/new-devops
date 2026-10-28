# Java + Docker + GitHub Actions starter

This sample CI pipeline checks Java style, compiles and tests the app, builds a Docker image, and scans the image for HIGH/CRITICAL vulnerabilities.

## Upload to GitHub
1. Extract this ZIP.
2. Create a new GitHub repository.
3. Upload the extracted contents to the repository root, including the hidden `.github` folder.
4. Commit to `main`, then open the repository's Actions tab and inspect `Java Quality and Docker CI`.

Marketplace installation is normally not required for actions referenced in YAML, though repository policy can restrict them.

## Run locally
Requirements: JDK 17, Maven, Docker.
```bash
mvn --batch-mode checkstyle:check
mvn --batch-mode clean verify
docker build -t java-quality-demo:local .
docker run --rm java-quality-demo:local
```
Expected output:
```text
Hello from Java + Docker + GitHub Actions!
2 + 3 = 5
```

## Notes
- The workflow builds and scans the image but does not publish it to a registry.
- The Trivy scan fails for applicable HIGH/CRITICAL findings, excluding unfixed vulnerabilities. Investigate scan failures.
- Action version tags are used for learning; pin third-party actions to verified full-length commit SHAs for production.
- The Checkstyle rules are intentionally minimal and can be expanded.
