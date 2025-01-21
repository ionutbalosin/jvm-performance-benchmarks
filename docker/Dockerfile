ARG JDK_IMAGE="input arg required"
ARG JRE_IMAGE="input arg required"

FROM ${JDK_IMAGE}
ARG BUILD_PROFILE="input arg required"

USER root
COPY --chown=root:root . /home/build/
WORKDIR /home/build
RUN /home/build/mvnw -P ${BUILD_PROFILE} package

FROM ${JRE_IMAGE}

COPY --from=0 /home/build/benchmarks/target/benchmarks.jar /app/

ENTRYPOINT ["java", "-jar", "/app/benchmarks.jar"]
