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
python.exec("happyBirthdayToYou()")

# unfortunately, rPython does not work on Wintel systems. However, despair not, you can escape to the OS with system()
 ##system('python -c "def happyBirthdayToYou():  print(\"happy birthday to you!\")"')
 ##system('python -c "happyBirthdayToYou()"')
       #### NOT WORKING!!! OUTTA LUCK w\ Windows! 
  # use python.exec when you only need to execute or evaluate an expression within Python
  # use python.get to retrieve an object post-execution
# now for a more advanced example 

python.exec("import nltk")
python.exec("import nltk.corpus")
python.exec("from nltk.corpus import PlaintextCorpusReader")
python.exec("from urllib import urlopen")
python.exec("import numpy")
#python.exec("corpus_root = '/amanuensis/data/raw_data/corpora/fedchairs/gReenspanCorpus/'")
#python.exec("corpus = PlaintextCorpusReader(corpus_root, '.*')")
#python.get("corpus.fileids()")
#python.get("corpus.open('greenspan_19990506.txt')")
python.exec("url = 'greenspan_19990506.txt'")
python.exec("raw = open(url).read()")
python.exec("ttt = nltk.tokenize.TextTilingTokenizer(w=7, k=3, smoothing_width=6, smoothing_rounds=10)")
python.exec("tiles = ttt.tokenize(raw)")
python.exec("print(tiles[1])")
firstTextTile <- python.get("textTiles[-1]")
firstTextTile
python.get("firstTextTile")
text <- paste("espeak -v+whisper -k20 -p 79 -s 225 -f \"", firstTextTile, "\"", sep="")
text
system(text)

