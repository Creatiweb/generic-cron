#Basic k8s sidecar cron containder

## Example usage

### Docker

    # Run every minute touc file /root/pippo
    docker run -e SCHEDULEFREQ="*     *       *       *       *       " -e SCHEDULECMD="touch /root/pippo"  creatiweb/generic-cron

