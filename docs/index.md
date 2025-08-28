# Application packages in the xcube ecosystem

## Overview

In this course, you'll get to know:

- **OGC Earth Observation Application Packages**, a framework that lets you
  package almost any software into a reusable module for deployment on cloud
  infrastructure.
- **xcube**, a multitalented, ever-growing toolkit and ecosystem for working
  with data cubes in Python.
- **xcengine**, a new tool that lets you automatically turn your Python
  Jupyter notebooks into both **Application Packages** and **xcube server
  containers**.

## Requirements

To follow along with the course content, you'll need to have the following
installed and working on your computer:

- Your preferred **terminal emulator**, preferably running the bash shell.
- A **conda-based Python environment**, which we'll use to set up an
  environment in which to run the Python tools. I recommend
  [mamba](https://mamba.readthedocs.io/). You can find [installation
  instructions
  here](https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html).
- [git](https://git-scm.com/)
- [docker](https://www.docker.com/)

If there's enough time at the end, we'll also set up an Application Package
Platform using [ZOO](https://zoo-project.org/) and use it to run an
Application Package locally! If you also want to follow along with this on
your own machine, you should have the following installed:

- [minikube](https://minikube.sigs.k8s.io/docs/start/)
- [helm](https://helm.sh/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Outline of course content

1. I'll give a quick introduction to Application Packages, what they're useful
   for, and how they are structured.
2. We'll go hands-on, write a (very!) simple Application Package by hand, and
   run it using `cwltool`.
3. I'll introduce xcengine, a program to turn Jupyter notebooks into
   Application Packages.
4. We'll run xcengine on a simple example notebook, then look at the
   application package that it produces and run it using `cwltool`.
5. I'll introduce xcube and describe the extra functionality built into every
   xcengine Application Package: a self-contained xcube server and viewer
   deployment!
6. We'll run our generated Application Package container image in "xcube
   mode" and see its output data in the viewer.
7. *If* we have enough time at the end, I'll demonstrate running ZOO –
   a fully-fledged Application Package platform – on a local computer.
   If you've pre-installed the optional requirements (see above), you
   can follow along on your own machine.
