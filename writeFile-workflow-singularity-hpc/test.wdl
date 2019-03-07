workflow myWorkflowDocker {

  String gatk_docker

  call myTaskContained {
    input:
      task_docker_image = gatk_docker
  }

call myTask 

}

task myTaskContained {
  String task_docker_image

  command {
    echo "hello world" > test.out
  }
  runtime {
    docker: task_docker_image
    memory: "10 GB"
  }
  output {
    File out = "test.out"
  }
}

task myTask {

  command {
    echo "hello not contained" > test.notContained.out
  }
  runtime {
    memory: "10 GB"
  }
  output {
    File out = "test.notContained.out"
  }

}
