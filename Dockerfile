FROM ubuntu:24.04 AS base

RUN apt update -y && apt install -y \
    git \
    python3-dev \
    python3-pytest \
    python3-numpy \
    python3-matplotlib

FROM base
RUN git clone https://github.com/iTaykon/diffusion2D-testing-exercise.git
WORKDIR /diffusion2D-testing-exercise/
CMD ["python3","-m","pytest"]