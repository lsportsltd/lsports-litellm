FROM docker.litellm.ai/berriai/litellm:main-stable

RUN pip install --no-cache-dir google-cloud-aiplatform

EXPOSE 4000/tcp

ENTRYPOINT ["docker/prod_entrypoint.sh"]
CMD ["--port", "4000"]
