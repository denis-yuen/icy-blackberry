#!/usr/bin/env cwl-runner

class: CommandLineTool
id: icy-blackberry 
label: Simple HCA tutorial
cwlVersion: v1.0

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/

doc: |
  A very, very simple Docker container for the HCA tutorial.


dct:creator:
  '@id': http://orcid.org/0000-0002-6130-1021
  foaf:name: Denis Yuen 
  foaf:mbox: denis.yuen@oicr.on.ca 

requirements:
- class: DockerRequirement
  dockerPull: quay.io/denis_yuen/icy-blackberry:1.0 

hints:
- class: ResourceRequirement
  coresMin: 1
  ramMin: 1024
  outdirMin: 512000
  description: the command really requires very little resources.

inputs:
  input_file:
    type: File
    format: http://edamontology.org/data_3671
    inputBinding:
      position: 1
    doc: The file that will be modified 

outputs:
  output_file:
    type: File
    format: http://edamontology.org/data_3671
    outputBinding:
      glob: out.txt 
    doc: A text file that contains some output

baseCommand: [/start.sh]
