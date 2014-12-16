# convert to R with rPython
# raw python version
import nltk
import sys
from nltk.tokenize import RegexpTokenizer

sentence = "I am the walrus. I am the eggman. The man eats the apple. Ivan shot the bear."

for arg in sys.argv: 
    print arg
    sentences = nltk.sent_tokenize(arg)
    print(sentences)
    tokenizer = RegexpTokenizer(r'\w+')

for sentence in sentences: 
 #   tokens = nltk.word_tokenize(sentence) 
 #   print(tokens)
    tokens = tokenizer.tokenize(sentence)
    tagged = nltk.pos_tag(tokens)
    print(tagged)
    entities = nltk.ne_chunk(tagged)
    print(entities)
######### SNIP SNIP######################
#########################################
#########################################
    
    
# R version ----------- INCOMPLETE!!!
python.exec("import nltk")
python.exec("import sys")
python.exec("from nltk.tokenize import RegexpTokenizer")

python.exec("sentence = \"I am the walrus. I am the eggman. The man eats the apple. Ivan shot the bear.\"")
python.exec("for arg in sys.argv: print arg
    sentences = nltk.sent_tokenize(arg)
    print(sentences)
    tokenizer = RegexpTokenizer(r'\w+')")

python.exec("for sentence in sentences: 
 #   tokens = nltk.word_tokenize(sentence) 
 #   print(tokens)
    tokens = tokenizer.tokenize(sentence)
    tagged = nltk.pos_tag(tokens)
    print(tagged)
    entities = nltk.ne_chunk(tagged)
    print(entities)")


