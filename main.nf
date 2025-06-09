#!/usr/bin/env nextflow

process sayHello {
    memory '500 MB'
    conda "${projectDir}/env.yml"

    input:
    val x

    output:
    stdout

    script:
    """
    echo '${x} world!'
    """
}

workflow {
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
