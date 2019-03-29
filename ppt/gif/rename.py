import os,re

os.chdir(os.path.dirname(__file__))
pattern = re.compile('frame')
i = 0
for filename in os.listdir():
    if (pattern.match(filename)):
        i = int(re.split('_',filename)[1])
        os.rename(filename, 'anim' + str(i)+'.png')