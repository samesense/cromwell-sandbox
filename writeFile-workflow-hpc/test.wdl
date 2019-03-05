workflow myWorkflowDocker {

  call myTask 
}

task myTask {

  command {
    echo "hello world" > test.out
  }
  runtime {
    memory_mb: 1
  }
  output {
    File out = "test.out"
  }
}
