workflow myWorkflowDocker {

  String gatk_docker

  call myTask {
    input:
      task_docker_image = gatk_docker
  }
}

task myTask {
  String task_docker_image

  command {
    echo "hello world" > test.out
  }
  runtime {
    task_docker_image: task_docker_image
    memory: "10 GB"
  }
  output {
    File out = "test.out"
  }
}
