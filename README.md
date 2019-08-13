# minifi-movidius-electric

** MiNiFi Java 0.6.0 Agent on Raspberry Pi 3B+ with Movidius Intel VPU, WebCamera, Sense-Hat **

![EFM](https://github.com/tspannhw/minifi-movidius-electric/blob/master/efmflowsmov.png "EFM")

![Movidius NiFi](https://github.com/tspannhw/minifi-movidius-electric/blob/master/nififlowmovidius.png "Movidius NiFi")

![Energy Slack](https://github.com/tspannhw/minifi-movidius-electric/blob/master/pushingenergytoslack.png "Energy Slack")

![MXNet Slack](https://github.com/tspannhw/minifi-movidius-electric/blob/master/pushingsensormxnet.png "MXNet Slack")

![RPI EFM](https://github.com/tspannhw/minifi-movidius-electric/blob/master/rpiefm.png "RPI EFM")

![HWX](https://github.com/tspannhw/minifi-movidius-electric/blob/master/2019-08-12_1546.jpg "HWX")

See:  https://www.datainmotion.dev/2019/08/rapid-iot-development-with-cloudera.html


** Running Electric Monitoring **

https://www.datainmotion.dev/2019/08/rapid-iot-development-with-cloudera.html

This will run the Python 3 interface to HS110 Electric Meter:

** (em.sh) ** 

`python3 -W ignore /opt/demo/nifi-energy-monitoring/energymonitor.py 2>/dev/null`


** (run2.sh) **

`#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

fswebcam -q -r 1280x720 --no-banner /opt/demo/images/$DATE.jpg
python3 -W ignore /opt/demo/all.py /opt/demo/images/$DATE.jpg 2>/dev/null`

In this one we capture the webcamera image and feed it to our Python script that runs MXNet, Caffe and Sense ingest.
