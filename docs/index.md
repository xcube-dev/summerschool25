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

## The course GitHub repository

The resources for the course are in a GitHub repository at
<https://github.com/xcube-dev/summerschool25/>.

Use git to clone this repository onto your computer and follow the
instructions in the `README.md` file to get set up.

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

## Background reading

**None** of these links are required reading, but they're good starting points
if you want to do some extra preparation or if you're curious about the
technologies involved.

- [OGC Best Practice for Earth Observation Application Package](https://docs.ogc.org/bp/20-089r1.html)
  is the official document defining Application Packages. It's long, detailed,
  technical, and *not* recommended for reading all the way through, but it's
  the official reference if you ever want to look up some technical detail.
- [Earth Observation Application Package resources at
  eoap.github.io](https://eoap.github.io/), a collection of hands-on
  Application Package tutorials. A much friendlier introduction than the
  official definition document!
- The [Common Workflow Language (CWL) user
  guide](https://www.commonwl.org/user_guide/) introduces the language
  used to write Application Package definitions.
- [A docker tutorial for beginners](https://docker-curriculum.com/).
  Application Packages rely on Docker container images to package their code.
  This tutorial is a good starting point if you haven't worked with Docker
  before.
- The [xcengine documentation](https://xcube-dev.github.io/xcengine/) and
  [GitHub repository](https://github.com/xcube-dev/xcengine). xcengine
  currently has limited documentation, but if you're curious you can
  install it from the repository and try out one of the examples.
- The [xcube documentation](https://xcube.readthedocs.io/). We won't be
  using xcube extensively during the course, but we'll run an xcube
  server and viewer from a generated docker image.
- The [xcube Viewer](https://xcube-dev.github.io/xcube-viewer/) documentation
  and the [public xcube Viewer demo](https://bc-viewer.brockmann-consult.de/).
  In the course we'll start an xcube Viewer from a docker image, but we
  won't do any serious work in the Viewer. Nevertheless, you might want
  to try it out in advance.
