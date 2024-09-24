## Context

The `moderators` namespace contains secrets with information about usernames and passwords. Some of these secrets are used by resources within the same namespace.
## Task

> Note: Data stored in secrets is base64 encoded!

One of the users still has their password field set to the default `CHANGE123`. Update it to `MANGO123`.


<br>
<details><summary>Tip</summary>
<br>

An easy way to check secret contents is by filtering the output using jsonpath. Here is an example:
<br>
```bash
(ins)❯ kubectl -n countries get secrets nepal -o jsonpath={.data.currency}
bmVwYWxydXBwZQ==

```





