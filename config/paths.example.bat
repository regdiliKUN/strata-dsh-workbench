@echo off
REM ============================================================
REM  strata-dsh-workbench  --  PATH CONFIGURATION
REM ============================================================
REM
REM  This is the ONLY file you normally need to edit.
REM
REM  Easiest way:  double-click  setup.bat  in the repo root.
REM  It will auto-detect everything it can and write config\paths.bat
REM  for you. Only edit by hand if auto-detection fails.
REM
REM  RULES
REM    * Keep this file pure ASCII (no Chinese characters).
REM    * Use double quotes around paths.
REM    * No trailing backslash.
REM
REM  IMPORTANT: this file is git-ignored. Your local paths never
REM  leave your machine.
REM ============================================================


REM ------------------------------------------------------------
REM  1. Strata engine  --  the folder where you cloned / extracted
REM     https://github.com/Niko1221/Strata
REM     Must contain  serve\server.py  and  engine\strata.exe
REM ------------------------------------------------------------
set "STRATA_HOME=F:\Strata"


REM ------------------------------------------------------------
REM  2. Strata data  --  downloaded model packs, gguf, mtp
REM     Must contain  packs\<profile>  and  models\<PROFILE>
REM ------------------------------------------------------------
set "STRATA_DATA=F:\Strata-data"


REM ------------------------------------------------------------
REM  3. Model profile to launch.
REM     Allowed:  iq2_xs | iq3_s | iq3_xxs | q2_0
REM     Must match the folder name under STRATA_DATA\models
REM ------------------------------------------------------------
set "STRATA_PROFILE=iq2_xs"


REM ------------------------------------------------------------
REM  4. DeepSeek Harness runtime  --  the folder that contains
REM     node_modules\@deepseek-ai\dsh\lib\bin.js
REM     Usually  %USERPROFILE%\dsh-runtime
REM ------------------------------------------------------------
set "DSH_HOME=C:\Users\YOURNAME\dsh-runtime"


REM ------------------------------------------------------------
REM  5. Node.js executable.
REM     Leave as "node" to use PATH, or give a full path.
REM ------------------------------------------------------------
set "NODE_EXE=node"


REM ------------------------------------------------------------
REM  6. Python used by the WebUI and the folder agent.
REM     Leave EMPTY to auto-detect (Strata venv -> py launcher -> PATH).
REM ------------------------------------------------------------
set "PYTHON_EXE="


REM ------------------------------------------------------------
REM  7. Ports
REM ------------------------------------------------------------
set "STRATA_PORT=8080"
set "WEB_PORT=8090"


REM ------------------------------------------------------------
REM  8. Shared local API key.
REM     Strata enforces this key, and dsh must send the same value.
REM     It is a LOCAL key only -- it never talks to the internet.
REM ------------------------------------------------------------
set "STRATA_API_KEY=sk-local-qwen"
