docker run -d --net=host --privileged=true \
-e ENVIRONMENT=production \
-e PARENT_HOST=$(hostname) \
-e MESOS_IP=10.10.0.111 \
-e MESOS_MASTER=zk://10.10.0.11:2181,10.10.0.12:2181,10.10.0.13:2181/mesos \
-e MESOS_REGISTRATION_TIMEOUT=5min \
-e MESOS_CONTAINERIZERS=docker,mesos \
-e MESOS_HOSTNAME=10.10.0.111 \
-e MESOS_DOCKER_SANDBOX_DIRECTORY=/mnt/mesos/sandbox \
-e MESOS_WORKDIR=/var/lib/mesos \
-v /data/mesos/workdir:/var/lib/mesos:rw \
-v /data/mesos/sandbox:/mnt/mesos/sandbox:rw \
-v /sys/:/sys:ro \
-v /usr/bin/docker:/usr/bin/docker:ro \
-v /var/run/docker.sock:/var/run/docker.sock:rw \
mesos-slave-jenkins
