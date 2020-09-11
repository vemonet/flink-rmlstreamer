Apache Flink image with the RMLStreamer.jar included in `/opt/RMLStreamer.jar`

RMLStreamer.jar version 2.0.0 from https://github.com/RMLio/RMLStreamer

> Use build args when mismatch between release and jar version has been fixed

Build:

```bash
docker build -t umids/flink-rmlstreamer:latest .
```

Push to DockerHub

```bash
docker push umids/flink-rmlstreamer:latest
```

See [vemonet/flink-on-openshift](https://github.com/vemonet/flink-on-openshift) to deploy RMLStreamer on OpenShift/Kubernetes

Start Apache Flink:

```bash
docker run -it --name flink-rmlstreamer umids/flink-rmlstreamer:latest
```

Run the RMLStreamer:

```bash
docker exec flink-rmlstreamer /opt/flink/bin/flink run -c io.rml.framework.Main /opt/RMLStreamer.jar toFile -m /mnt/mapping.rml.ttl -o /mnt/rdf_output.nq --job-name "RMLStreamer mapping.rml.ttl"
```

