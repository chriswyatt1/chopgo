/*
 * Copyright (c) 2022
 */
 

 /*
 * Authors:
 * - Chris Wyatt <chris.wyatt@seqera.io>
 */

/*
 * Default pipeline parameters (on test data). They can be overriden on the command line eg.
 * given `params.genome` specify on the run command line `--genome /path/to/Duck_genome.fasta`.
 */

params.db="test_data/DB"
params.focal='test_data/focal.txt'
params.back="test_data/back.txt"

params.outdir = "results"


//For CPU and Memory of each process: see conf/optimized_processes.config

log.info """\
 ===================================
 focal genes                      : ${params.focal}
 background genes                 : ${params.back}
 database                         : ${params.db}
 out directory                    : ${params.outdir}
 """

//================================================================================
// Include modules
//================================================================================

include { CHOPGO } from './modules/chopgo.nf'



// TEST WHAT TYPE OF PIEPLINE TO RUN 



workflow {
    CHOPGO ( focal_ch , back_ch , db_channel , out_channel )
}

workflow.onComplete {
	println ( workflow.success ? "\nThis workflow has completed to end! Open your report in your browser --> $params.outdir/report.html (if you added -with-report flag)\n" : "Hmmm .. something went wrong" )
}

