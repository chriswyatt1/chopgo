process CHOPGO {
    label 'go'
    publishDir "$params.outdir/GO_ENRICHMENT/"
    //stageInMode 'copy'
    
    input:
        path Focal
        path DB
        path Background

    output:
        path("${focal}\.out=.go") , emit: go_enrichment

    script:
    """
        ChopGO_VTS.pl -i ${Focal} -db ${DB} -raw 1 -bg ${Background}
    """
}
