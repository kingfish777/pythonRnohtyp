# source: 
#
# simple example
import rpy2.robjects as robjects
pi = robjects.r['pi']
pi[0]
robjects.r('''
    r <- function(r, verbose=FALSE) {
        if (verbose) {
          cat("I am calling off f().\n")
        }
      }
    f(3)
  ''')
# 18.85
  
# another simple example
Letters = robjects.r['letters']
rcode  = 'paste(%s, collapse=”-”)' %(letters.r_repr())
print(res)
 
# a more interesting/useful example
 
r = robjects.r
x = robjects.IntVector(range(10))
y = r.rnorm(10)
r.X11() # for WinTel?
r.layout(r.matrix(robjects.IntVector([1,2,3,2]), nrow=2, ncol=2))
r.plot(r.runif(10), y, xlab="runif", ylab="foo/bar", col="red")

