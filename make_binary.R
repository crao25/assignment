## create a dummy binary input data
seq <- c(0,61,1,1,0,62,3,2,3,3)
hex_seq <- as.raw(as.hexmode(seq))
zz <- file("input.bin", "wb")

## write the binary file
writeBin(hex_seq, zz)

close(zz)