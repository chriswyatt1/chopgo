# chopgo
Chris Adaptation of Top go

This repo is to run TopGO on a non-model organism, using the database made with chriswyatt/Goatee

You need your database of gene to GO hits (from Goatee), then a list of your focal genes and background genes (those that could have potentially been in the focal list).

1. Run as the following in its simple testing stage:

`nextflow run main.nf `

Using default parameters:
--db '/path/to/database/folder' 
--focal '/path/to/focal/gene/list' 
--back '/path/to/background/gene/list'

2. To specify a specific *db*:database or *focal* *background* gene lists you would use the following:

`nextflow run main.nf --db '/path/to/database/folder' --focal '/path/to/focal/gene/list' --back '/path/to/background/gene/list'`