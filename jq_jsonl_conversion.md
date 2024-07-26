# jq: JSONL ↔︎ JSON conversion

## Prerequisites

* **jq** — https://jqlang.github.io/jq/ — "like sed for JSON data"

  There are several options available for installing jq.
  I prefer to use Homebrew: `brew install jq`

1. ## JSONL → JSON
    ```txt
    jq -s '.' input.jsonl > output.json
    ```

1. ## JSON → JSONL
    ```txt
    jq -c '.[]' input.json > output.jsonl
    ```
