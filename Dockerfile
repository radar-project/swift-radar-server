FROM swift:4.0
WORKDIR /Radar
COPY . .
RUN swift build --configuration release
CMD [".build/release/Radar"]