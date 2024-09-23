## Context

The `moderators` namespace contains secrets with information about usernames and passwords. Some of these secrets are used by resources within the same namespace.

## Task

> Note: Data stored in secrets is base64 encoded!


One of the secrets is mounted as a volume in the `mod-machine`. Your task is to find the secret and update the username value to `orochimaru`.
Verify that the value has been updated by executing into the pod.







