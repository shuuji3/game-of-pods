- Fix `--ca-authority` command line option of `kube-apiserver` in `/etc/kubernetes/manifests/kube-apiserver.yaml`. The correct certificate is `/etc/kubernetes/pki/ca.crt`.

- Edit the `image` name of the DNS container image.

  ```shell
  k -n kube-system edit deploy/coredns
  ```

- Make `node01` schedulable.

  ```shell
  k taint node node01 node.kubernetes.io/unschedulable-
  k uncordon node01
  ``` 
