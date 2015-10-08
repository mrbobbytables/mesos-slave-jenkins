################################################################################
# mesos-slave-jenkins:1.0.1
# Date: 10/7/2015
# Docker Version: 1.8.2~trusty
# Mesos Version: 0.23.0-1.0
#
# Description:
# Mesos Slave container with jenkins user added.
################################################################################

FROM mrbobbytables/mesos-slave:1.0.1
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
