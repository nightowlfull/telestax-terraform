apiVersion: v1
preferences: {}
kind: Config

clusters:
- cluster:
    server: "${endpoint}"
    certificate-authority-data: "${cluster_auth_base64}"
  name: "${kubeconfig_name}"

contexts:
- context:
    cluster: "${kubeconfig_name}"
    user: "${rundeck_sa}"
  name: "${kubeconfig_name}"

current-context: "${kubeconfig_name}"

users:
- name: "${rundeck_sa}"
  user:
    token: "${token}"
