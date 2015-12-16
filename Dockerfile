################################################################################
# mesos-slave-jenkins:1.1.4
# Date: 12/16/2015
# Docker Version: 1.9.1~trusty
# Mesos Version: 0.25.0-0.2.70.ubuntu1404
#
# Description:
# Mesos Slave container with jenkins user added.
################################################################################

FROM mrbobbytables/mesos-slave:1.1.4

MAINTAINER Bob Killen / killen.bob@gmail.com / @mrbobbytables


RUN addgroup --quiet            \
    --system                    \
    --gid 989                   \ 
    jenkins                     \
 && adduser --quiet             \
    --system                    \
    --no-create-home            \
    --ingroup jenkins           \
    --disabled-password         \
    --uid 989                   \
    --shell /bin/bash jenkins 

CMD ["./init.sh"]  
