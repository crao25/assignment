## create a dummy binary input data
seq <- c(0,61,1,1,0,62,3,2,3,3)

## create a raw vector using the above sequence
hex_seq <- as.raw(as.hexmode(seq))

## open connection to write the binary file
zz <- file("input.bin", "wb")

## write the binary file
writeBin(hex_seq, zz)

## close connection
close(zz)

## create a dummy binary input data for the trivial solution
seq <- c(0,61,0,1,0,62,0,2,0,3)
hex_seq <- as.raw(as.hexmode(seq))
zz <- file("trivialinput.bin", "wb")

## write the binary file
writeBin(hex_seq, zz)

close(zz)
