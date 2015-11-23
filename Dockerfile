################################################################################
# mesos-slave-jenkins:1.1.3
# Date: 11/23/2015
# Docker Version: 1.9.1~trusty
# Mesos Version: 0.24.1-0.2.35.ubuntu1404
#
# Description:
# Mesos Slave container with jenkins user added.
################################################################################

FROM mrbobbytables/mesos-slave:1.1.3

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
