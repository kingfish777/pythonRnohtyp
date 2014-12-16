# install.packages("rPython", repos = "http://www.datanalytics.com/R")
# if this doesn't work, go to cran site and download an older version as tar.gz and install it through rstudio 
# from local drive
#  ... this will install RJSONIO if it hasn't been installed already
# as JSON is the facilitator of communication between R & Python
library(rPython)
# simple example
x <- python.get("1+2")
# another simple example, creating a function, notice the escapes
python.exec("def happyBirthdayToYou(): print(\"happy birthday to you!\")")
  # use python.exec when you only need to execute or evaluate an expression within Python
  # use python.get to retrieve an object post-execution
# now for a more advanced example

python.exec("import nltk")
python.exec("import nltk.corpus")
python.exec("from nltk.corpus import PlaintextCorpusReader")
python.exec("from urllib import urlopen")
python.exec("import numpy")
python.exec("corpus_root = '/amanuensis/Public/corpora/transcripts/1936'")
python.exec("corpus = PlaintextCorpusReader(corpus_root, '.*')")
python.get("corpus.fileids()")
python.get("corpus.open('fomcropa19361120.txt')")
python.exec("url = \"/amanuensis/Public/corpora/afan/ArmlessMaiden.txt\"")
python.exec("url = \"/amanuensis/Public/corpora/afan/BaldakBorisevich.txt\"")
python.exec("url = \"/amanuensis/Public/corpora/afan/DaughterStepdaughter.txt\"")
python.exec("url = \"/amanuensis/Public/corpora/afan/Berenushka.txt\"")
python.exec("raw = urlopen(url).read()")
python.exec("textTIleTokenize = nltk.tokenize.TextTilingTokenizer(w=7, k=3, smoothing_width = 6, smoothing_rounds = 10)")
python.get("raw")
python.exec(paste("textTiles = textTileTokenize.tokenize(raw)"))
firstTextTile <- python.get("textTiles[-1]")
firstTextTile
python.get("firstTextTile")
text <- paste("espeak -p 99 \"", firstTextTile, "\"", sep="")
text
system(text)

