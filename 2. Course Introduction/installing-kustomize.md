#  Installing Kustomize
Now, if you have been following, you know that since kubectl v1.14, kustomize is now bundled as part of kubectl.
However, what this also means and i've noticed is that, the version of kustomize that comes bundled with kubectl is separate
and can be outdated. 

So if you always want to have the latest binaries, then i suggest you install kustomize standalone.
However, if you are in a limited environment where you only have kubectl available, then that should still work fine.

So let's go ahead and install Kustomize. 

MAC:
The easiest way to install kustomize if you are on a MAC is using homebrew or macports. 

brew install kustomize / sudo port install kustomize

 Other ways to Install Kustomize
 - Compile from source (requires Go installed)
 - Download binaries (Script doesn't work for ARM - use releases page instead)
 - Docker images (starting @ v3.5.7) hosted on Google Container Registry. (Public available images: https://console.cloud.google.com/gcr/images/k8s-artifacts-prod/US/kustomize/kustomize)
 - Chocolatey (Windows) - choco install kustomize


## Further reading
- https://kubectl.docs.kubernetes.io/installation/kustomize/