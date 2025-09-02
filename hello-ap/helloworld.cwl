# A very simple application package.
# It takes no inputs, and outputs a single text file.
# It also generates a STAC catalogue describing its output file --
# this is required for a conformant Application Package.

cwlVersion: v1.2
$namespaces:
  s: https://schema.org/
s:softwareVersion: 1.0.0
schemas:
  - http://schema.org/version/9.0/schemaorg-current-http.rdf

# The $graph element contains the Workflow and CommandLineTool
# definitions. Collecting them in $graph lets us pack everything
# into a single CWL file.
$graph:
  # The workflow is the part that will be invoked by an external runner like
  # cwltool or an Application Package platform.
  - class: Workflow
    id: hello
    label: hello world
    doc: hello world
    requirements: []
    inputs: {}
    outputs:
      - id: stac_catalog
        type: Directory
        outputSource:
          - run_script/results
    steps:
      run_script:
        # This is where we connect the Workflow to the CommandLineTool.
        run: '#myscript'
        in: {}
        out:
          - results
  - class: CommandLineTool
    id: myscript  # This ID is referenced by our workflow.
    requirements:
      DockerRequirement:
        # We're just running a simple shell script, so almost any POSIX-based
        # image will do. To keep bandwidth usage down, we use one of the
        # smallest: Alpine Linux.
        dockerPull: alpine:3.22.1
      InitialWorkDirRequirement:
        # Here we add some files directly to the container. These could also
        # be built into the Docker image, but if we do it this way we can use
        # a standard image rather than building our own.
        listing:
          # This is the script that actually gets called and does the
          # "processing" -- in this case, just writing a text file.
          - entryname: myscript.sh
            entry: |-
              echo "Hello world!" >>hello.txt
          # Now we write a STAC catalogue. cwltool doesn't care about this,
          # but an Application Package platform needs it to stage out the
          # data correctly.
          - entryname: catalog.json
            entry: |-
              {
              "type": "Catalog",
              "id": "catalog",
              "stac_version": "1.1.0",
              "description": "Root catalog",
              "links": [
              {
              "rel": "root",
              "href": "./catalog.json",
              "type": "application/json"
              },
              {
              "rel": "item",
              "href": "./item.json",
              "type": "application/geo+json"
              }]}
          # This STAC item describes our output file and is linked from the
          # STAC catalogue.
          - entryname: item.json
            entry: |-
              {
              "type": "Feature",
              "stac_version": "1.1.0",
              "id": "myitem",
              "links": [{
              "rel": "root",
              "href": "catalog.json",
              "type": "application/json"
              }, {
              "rel": "parent",
              "href": "catalog.json",
              "type": "application/json"
              }],
              "properties": {
                "datetime": "2001-01-01T00:00:00Z"
              },
              "assets": {
                "asset1": {
                  "href": "./hello.txt",
                  "type": "text/plain",
                  "title": "Text output",
                  "roles": [
                  "data"
                  ]}}}
    baseCommand:
      - sh
    arguments:
      - myscript.sh
    inputs: {}
    outputs:
      results:
        type: Directory
        outputBinding:
          glob: .
