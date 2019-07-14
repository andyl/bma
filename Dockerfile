# >>>>>> LocalTest
# Build: docker build -t phx-bma .
# Run:   docker run -p 8444:4000 phx-bma
#
# >>>>>> DockerHub
# Build: docker build -t <yourname>/bma .
# Login: docker login -u <yourname>
# Push:  docker push <yourname>/bma
# Run:   docker run -p 8444:4000 <yourname>/bma

FROM elixir:1.9

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

WORKDIR /app
ENV MIX_ENV=prod
COPY _build/prod/rel/bma /app/
EXPOSE 4000

CMD /app/bin/bma foreground
