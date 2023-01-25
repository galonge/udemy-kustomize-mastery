# Hands-on Playground

> Nav: [Back to Intro Lectures](../README.md)

Now, lets get our hands dirty a bit and see this thing we have been talking about in action.

The goal of this section is to get you started on the benefits of kustomize with the least setup required.
So, we are NOT going to installing kubectl or kustomize yet, instead we will be using a cloud service 
called "Killer Koda". This provides us with a playground for kubernetes with kubectl already installed. 

To get started,
- Head over to (Killer Koda)[https://killercoda.com/kubernetes/scenario/a-playground] to provision a demo playground.
- Confirm kubectl and kustomize is installed and versions with the following command: `kubectl version --short`

Clone the github repository:
```sh 
  git clone https://github.com/galonge/udemy-kustomize-mastery
```

Navigate to the wordpress-example subdirectory
```sh
 cd udemy-kustomize-mastery/code-samples/into/wordpress-example
```

The manifests/ directory contains raw kubernetes manifests for our application.

Apply manifests to cluster
```sh
  kubectl apply -f manifests/v1
```

#### Day2
Now, it is day 2 of our operations, and we need to add a new label to the deployment,
Traditionally, most people will just go ahead and edit the manifests, but this is not scalable over time 
as you lose your original manifests every time you make a change. 

More importantly, if you need to manage multiple 
versions of your application, then you either need to duplicate the entire manifest to something like a v1, v2 etc.

With Kustomize, we just need a kustomization.yml file (A KRM) specification file that describes how transformations should happen in other kubernetes resource objects.

```sh
  kubectl create ns v2
```

Apply with kustomize
```sh
  kubectl kustomize kustomize/v2
  kubectl apply -n v2 -k kustomize/v2
```

Expose wordpress port
```sh
  kubectl port-forward -n v2 --address 0.0.0.0 svc/wordpress 80:80
```

#### Day 3
Now its day 3 and we need to add a mysql database
With our kustomize workflow, all we need is a new kustomization file with v3 requirements and reuse our base resources.

```sh
  kubectl create ns v3
  kubectl apply -k kustomize/v3 -n v3
```


Cleanup resources
```sh
  kubectl delete -k -n v2 kustomize/v2
  kubectl delete -k -n v3 kustomize/v3
```
> Nav: [Back to Intro Lectures](../README.md)

## Further reading

- 
- 
