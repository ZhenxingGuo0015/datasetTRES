# preprocess of raw bam files
read.BAM <- function(fn){
  require(Rsamtools)
  param = ScanBamParam(what=c("rname","strand","pos","qwidth"))
  bam = scanBam(fn, param=param)[[1]]
  ix = !is.na(bam$rname) & !is.na(bam$pos)
  qwidth = bam$qwidth[ix]
  IRange.reads <- GRanges(seqnames=Rle(bam$rname[ix]),
                          ranges=IRanges(bam$pos[ix], width=bam$qwidth[ix]),
                          strand=Rle(bam$strand[ix]))
  IRange.reads
}


cb_6wk_input_rep1_chr19 = read.BAM("../inst/extdata/cb_input_rep1_chr19.bam")
cb_6wk_ip_rep1_chr19 = read.BAM("../inst/extdata/cb_ip_rep1_chr19.bam")

cb_6wk_input_rep2_chr19 = read.BAM("../inst/extdata/cb_input_rep2_chr19.bam")
cb_6wk_ip_rep2_chr19 = read.BAM("../inst/extdata/cb_ip_rep2_chr19.bam")

# ### use the data
usethis::use_data(cb_6wk_input_rep1_chr19, overwrite = TRUE)
usethis::use_data(cb_6wk_ip_rep1_chr19, overwrite = TRUE)
usethis::use_data(cb_6wk_input_rep2_chr19, overwrite = TRUE)
usethis::use_data(cb_6wk_ip_rep2_chr19, overwrite = TRUE)
