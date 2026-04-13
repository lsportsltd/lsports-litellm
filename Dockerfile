FROM docker.litellm.ai/berriai/litellm:v1.82.3-stable.patch.4

RUN pip install --no-cache-dir google-cloud-aiplatform

EXPOSE 4000/tcp

ENTRYPOINT ["docker/prod_entrypoint.sh"]
CMD ["--port", "4000"]
