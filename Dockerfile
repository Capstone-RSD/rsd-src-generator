FROM jaegertracing/protobuf:latest
COPY . .
CMD [ "protoc", "--java_out=protobuf-rsd-gen/java-src", "-I/usr/include/github.com/google/protobuf", "rss_client.proto,rss_cost_analysis.proto,rss_payload.proto" ]