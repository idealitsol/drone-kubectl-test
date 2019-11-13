# drone-kubectl-test

Test Drone

## How to get the credentials

First, you need to have a service account with **proper privileges** and **service-account-token**.

You can find out your server URL which looks like `https://xxx.xxx.xxx.xxx` by the command:

```bash
kubectl config view -o jsonpath='{range .clusters[*]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
```

If the service account is `deploy`, you would have a secret named `deploy-token-xxxx` (xxxx is some random characters).
You can get your token and certificate by the following commands:

cert:

```bash
kubectl get secret deploy-token-xxxx -o jsonpath='{.data.ca\.crt}' && echo
```

token:

```bash
kubectl get secret deploy-token-xxxx -o jsonpath='{.data.token}' | base64 --decode && echo
```
