# docker-strava-mcp
Strava MCP (https://github.com/r-huijts/strava-mcp) run by docker compose with calude desktop.

## Installation
1. Clone this repository to your local machine.
2. Make sure you have Docker and Docker Compose installed on your machine.
3. https://github.com/r-huijts/strava-mcp?tab=readme-ov-file#3-strava-authentication-setup Follow the instructions to set up Strava authentication.
4. Modify .env file with your Strava API credentials. (If you don't have a .env file, create one based on the sample.env file.)
5. Set up claude desktop config as below.

## settings for claude desktop config (claude_desktop_config.json)
```json
{
    "mcpServers": {
        "STRAVA_MCP_LOCAL": {
            "command": "docker",
            "args": [
                "compose",
                "-f",
                "C:\\path\\to\\docker-strava-mcp\\docker-compose.yml",
                "run",
                "-i",
                "--rm",
                "strava-mcp",
                "node",
                "/app/dist/server.js"
            ]
        }
    }
}
```
