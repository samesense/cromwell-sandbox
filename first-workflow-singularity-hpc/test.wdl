workflow myWorkflowDocker {

  String gatk_docker

  call myTask {
    input:
      docker_image = gatk_docker
  }
}

task myTask {
  String docker_image

  command {
    echo "hello world"
  }
  runtime {
    docker: docker_image
    memory_mb: 1
  }
  output {
    String out = read_string(stdout())
  }
}
