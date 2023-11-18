FROM rust:bookworm

# Install required packages including LLVM
RUN apt-get update && apt-get install -y \
    git \
    llvm-15 \
    llvm-15-dev \
    libstdc++-11-dev \
    libclang-common-15-dev \
    zlib1g-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/

# Clone the ivm repository
RUN git clone https://github.com/inko-lang/ivm.git

# Set the working directory to the ivm directory
WORKDIR /usr/src/ivm

# Build the project using Cargo
RUN cargo build --release
RUN cargo install ivm

ENV PATH="/root/.local/share/ivm/bin:$PATH"

RUN ivm install latest 
RUN ivm default $(ivm list | grep -oP "\d+\.\d+\.\d+")

WORKDIR /usr/src/inko
