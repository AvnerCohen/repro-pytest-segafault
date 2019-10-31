#### Recreaton Steps

# docker build . -t repro
# docker run --rm repro

Expected Results:
```sh
============================= test session starts ==============================
platform linux -- Python 3.6.3, pytest-5.2.2, py-1.8.0, pluggy-0.13.0
rootdir: /opt/app-root/src
plugins: snapshottest-0.5.1
Fatal Python error: Segmentation fault

Current thread 0x00007f3be3b03740 (most recent call first):
  File "<frozen importlib._bootstrap>", line 219 in _call_with_frames_removed
  File "<frozen importlib._bootstrap_external>", line 922 in create_module
  File "<frozen importlib._bootstrap>", line 571 in module_from_spec
  File "<frozen importlib._bootstrap>", line 658 in _load_unlocked
  File "<frozen importlib._bootstrap>", line 955 in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 971 in _find_and_load
  File "<frozen importlib._bootstrap>", line 219 in _call_with_frames_removed
  File "<frozen importlib._bootstrap>", line 1017 in _handle_fromlist
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/lxml/html/__init__.py", line 53 in <module>
  File "<frozen importlib._bootstrap>", line 219 in _call_with_frames_removed
  File "<frozen importlib._bootstrap_external>", line 678 in exec_module
  File "<frozen importlib._bootstrap>", line 665 in _load_unlocked
  File "<frozen importlib._bootstrap>", line 955 in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 971 in _find_and_load
  File "<frozen importlib._bootstrap>", line 219 in _call_with_frames_removed
  File "<frozen importlib._bootstrap>", line 1017 in _handle_fromlist
  File "/opt/app-root/src/moshe.py", line 1 in <module>
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/assertion/rewrite.py", line 142 in exec_module
  File "<frozen importlib._bootstrap>", line 665 in _load_unlocked
  File "<frozen importlib._bootstrap>", line 955 in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 971 in _find_and_load
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/py/_path/local.py", line 701 in pyimport
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/python.py", line 501 in _importtestmodule
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/python.py", line 433 in _getobj
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/python.py", line 256 in obj
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/python.py", line 449 in _inject_setup_module_fixture
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/python.py", line 436 in collect
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/runner.py", line 256 in <lambda>
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/runner.py", line 229 in from_call
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/runner.py", line 256 in pytest_make_collect_report
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/callers.py", line 187 in _multicall
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 86 in <lambda>
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 92 in _hookexec
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/hooks.py", line 286 in __call__
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/runner.py", line 375 in collect_one_node
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 703 in genitems
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 478 in _perform_collect
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 439 in perform_collect
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 246 in pytest_collection
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/callers.py", line 187 in _multicall
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 86 in <lambda>
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 92 in _hookexec
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/hooks.py", line 286 in __call__
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 236 in _main
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 193 in wrap_session
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/main.py", line 230 in pytest_cmdline_main
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/callers.py", line 187 in _multicall
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 86 in <lambda>
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/manager.py", line 92 in _hookexec
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/pluggy/hooks.py", line 286 in __call__
  File "/opt/app-root/src/venv_repro/lib/python3.6/site-packages/_pytest/config/__init__.py", line 90 in main
  File "/opt/app-root/src/venv_repro/bin/pytest", line 8 in <module>
/opt/app-root/src/repro.sh: line 5:    21 Segmentation fault      pytest -s moshe.py
```