

To run Agent info command and confirm Agent is running:

```
kubectl exec -it <dd-agent> /etc/init.d/datadog-agent info
```


To hit endpoints and create traces:

```
kubectl exec -it <dd-agent> bash myapp/script.sh
```

(`ctrl+c` to stop script)


