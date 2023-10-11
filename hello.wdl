hello {
  String pattern
  File in
 
  command {
    egrep '${pattern}' '${in}'
  }
 
  output {
    Array[String] matches = read_lines(stdout())
  }
}
 
workflow wf {
  call hello
}
