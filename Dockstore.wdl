task hello {
  File inputFile

  command {
    /start.sh ${inputFile}
  }

 output {
    File value = "out.txt"
 }

 runtime {
   docker: "quay.io/denis_yuen/icy-blackberry:1.0"
   cpu: 1
   memory: "512 MB"
 }
}

workflow world {
 File inputFile
 call hello { input: inputFile=inputFile }
}

