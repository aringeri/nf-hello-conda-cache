#!/usr/bin/env nextflow

process sayHello {
    memory '500 MB'
    conda 'bwa=0.7.15'

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
