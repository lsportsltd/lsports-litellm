"""
Proxy custom hooks (see config.yaml `litellm_settings.callbacks`).

LiteLLM loads the configured instance from this path relative to the config file:
`config.yaml` at `/app/config.yaml` -> `/app/src/llm/callbacks.py`.
"""
from __future__ import annotations

from litellm.integrations.custom_logger import CustomLogger


class SportsBettingGuard(CustomLogger):
    """
    Place for sports-betting–specific / off-topic policy handling beyond YAML guardrails.

    Default: pass-through. Override `async_pre_call_hook` to reject or modify requests
    (return a str for a direct user message, a dict to replace the request, or raise).
    """


sports_betting_guard_instance = SportsBettingGuard()
