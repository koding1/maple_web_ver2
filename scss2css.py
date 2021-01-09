import sys
from scss import Compiler


sys.stdout = open('navi.css','w')
print(Compiler().compile('navi.scss'))