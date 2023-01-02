# The Kustomization File
A Kustomization file is a YAML file that defines the customization settings for your Kubernetes resources. 
It specifies how to apply transformations to your base resources, such as adding labels or annotations, overlaying values, or generating resources.

Here's an example of a simple Kustomization file:

```
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

resources:
  - deployment.yaml
  - service.yaml

namespace: my-namespace
commonLabels:
  app: my-app
  environment: staging
```

This Kustomization file specifies that it should apply the deployment.yaml and service.yaml files as base resources. It also specifies that it should set the namespace of the resources to `my-namespace` and add the labels `app: my-app` and `environment: staging` to all of the resources.

You can also use Kustomization to generate resources, such as secrets or ConfigMaps, from files or data stored in external sources as we will see in upcoming videos


So what makes up the Kustomization file?


## Further reading

- 