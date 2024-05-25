# README

## Install Docker Desktop

- [Docker Desktop Install](<https://docs.docker.com/desktop/>)
- [Enable Kubernates](https://docs.docker.com/desktop/kubernetes/)

## Install ArgoCD

- [k8s Setup ArgoCD](https://argo-cd.readthedocs.io/en/stable/)
- [Install ArgoCD CLI](https://argo-cd.readthedocs.io/en/stable/cli_installation/)
- [Port Forwarding to access ArgoCD UI](https://argo-cd.readthedocs.io/en/stable/getting_started/#port-forwarding)
-[Initial Admin Password](https://argo-cd.readthedocs.io/en/stable/getting_started/#4-login-using-the-cli)

## Login to Argo CLI and Password Update

1. login

    ```bash
    # install argo docs ref for port forwarding
    # you can also visit http://localhost:8080 to access the UI
    argocd login localhost:8080
    ```

2. change password

    ```bash
    argocd account update-password
    ```
