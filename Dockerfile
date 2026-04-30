FROM docker.litellm.ai/berriai/litellm:v1.82.3-stable.patch.4

RUN pip install --no-cache-dir google-cloud-aiplatform

# Config and assets live next to --config /app/config.yaml (LiteLLM resolves paths from that dir).
COPY config.yaml /app/config.yaml
COPY profanity_list.yaml /app/profanity_list.yaml
COPY src/llm/callbacks.py /app/src/llm/callbacks.py

EXPOSE 4000/tcp

ENTRYPOINT ["docker/prod_entrypoint.sh"]
CMD ["--config", "/app/config.yaml", "--port", "4000"]
