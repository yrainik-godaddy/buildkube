# buildkube

<table><tr>
<td>
  <a href="https://bazel.build">
    <img src="https://github.com/bazelbuild.png" height="120"/>
  </a>
</td>
<td>
  <a href="https://github.com/bazelbuild/remote-apis">
    <img src="http://laplace.us.es/wiki/images/0/09/Conduccion-metal.gif"
         height="120"/>
  </a>
</td>
<td>
  <a href="https://kubernetes.io">
    <img src="https://github.com/kubernetes.png"
         height="120"/>
  </a>
</td>
</tr>
<td>Bazel</td>
<td>REAPI</td>
<td>Kubernetes</td>
</table>

buildkube uses [rules_docker] and [rules_k8s] to build and deploy
[bazel-buildfarm], [bazel-buildbarn] and/or [buildgrid] into an existing
kubernetes cluster.  These are the 3 known open-source server-side
implementations of the [remote-execution-api] (REAPI), plus the closed source
google Remote Build Execution
([RBE](https://groups.google.com/forum/#!forum/rbe-alpha-customers)) service
(alpha).

Known clients of the REAPI include [bazel](https://github.com/bazelbuild/bazel)
itself, [recc](https://gitlab.com/bloomberg/recc), and possibly
[pants](https://github.com/pantsbuild/pants/pull/4910). 

## INSTRUCTIONS

1. Clone this repository
2. Edit the `WORKSPACE` file `k8s_deploy` rule to point to your kubernetes
   cluster (should match `$ kubectl config current-context`)
3. Build and deploy an implementation, for example: `$ (cd farm/ && make
   install)`
4. In a separate terminal, establish port-forwarding to the server
   implementation `$ (cd farm/ && make port-forward)`
5. Clone the abseil repository as a test case: `$ make abseil_clone`
6. Compile abseil remotely: `$ make abseil`

## NOTES

* Bazel 0.17.1 or higher is required (primarily tested on 0.17.2 on an ubuntu
  laptop).
* Run all tests via `$ bazel test //...`.
* Each implementation goes in its own namespace.  `$ kubectl get pods
  --all-namespaces` to see all.
* Consider adjusting `replicas` in the `deploy.yaml` files and/or `bazelrc`
  file.

### MISC

* BuildFarm worker does not detect if server goes down.  Must manually `kubectl
  delete pod --selector=k8s-app=worker` when re-installing or updating server
  deployment.

* When a worker registers itself with the server (operation-queue), it provides
  a dict of key:value pairs that must match the action execution requirements.
  In particular, the `worker.config` `container-image` key MUST be exactly
  matching the rbe_ubuntu image tag. 

[rules_docker]: https://github.com/bazelbuild/rules_docker 
[rules_k8s]: https://github.com/bazelbuild/rules_k8s
[bazel-buildfarm]: https://github.com/bazelbuild/bazel-buildfarm/
[bazel-buildbarn]: https://github.com/EdShouten/bazel-buildbarn/
[buildgrid]: https://gitlab.com/BuildGrid/buildgrid
[remote-execution-api]: https://github.com/bazelbuild/remote-apis
