# coding=utf-8

import os 
import re
import getopt
import sys
import traceback

reload(sys)
sys.setdefaultencoding('utf-8')


def help():
    usage = """Usage:python main.py 
--help | -h    print this usage.
--app          generate app files.
--ims          generate ims files.
--cms          generate cms files."""
    print usage


def get_feature(file_name):
    fo = open(file_name, "r+")
    content = fo.read();
    lines = content.split('\n')
    fo.close()
    return lines[1]

def scan(path):
    rtn = []
    for dir_path, dir_names, file_names in os.walk(path):
        if file_names:
            for file_name in file_names:
                full_path = os.path.join(dir_path, file_name)
                if full_path.endswith('.md'):
                    rtn.append(full_path)
    return rtn

def write(path, lines):
    fo = open(path, "wb")
    if isinstance(lines, list):
        for line in lines:
            fo.write(line)
            fo.write("\n")
    else:
        fo.write(lines)
    fo.close()

def process(package, rows, links):
    md_files = scan('./%s' % package)
    for md_file in md_files:
        feature = get_feature(md_file)
        feature = re.sub('\n', '', feature)
        feature = re.sub('\r', '', feature)
        html_file = re.sub('.md$', '.html', md_file)
        simple_name = re.sub('.md$', '', md_file)
        simple_name = re.sub('^.*\/', '', simple_name)
        rows.append('|%-20s|[%s]|%s|' % (package, simple_name, feature))
        links.append('[%s]: %s' % (simple_name, html_file))

def app():
    rows = []
    links = []
    links.append('')
    links.append('')
    rows.append('|Package             |Link                       |Feature                    |')
    rows.append('|:-------------------|:--------------------------|:--------------------------|')
    
    for package in ['activity', 'content', 'home', 'io', 'live', 'search', 'sns', 'user']:
        process(package, rows, links)
    for row in rows:
        print row
    for link in links:
        print link

def ims():
    rows = []
    links = []
    links.append('')
    links.append('')
    rows.append('|Package             |Link                       |Feature                    |')
    rows.append('|:-------------------|:--------------------------|:--------------------------|')
    
    for package in ['ims']:
        process(package, rows, links)
    for row in rows:
        print row
    for link in links:
        print link

def cms():
    rows = []
    links = []
    links.append('')
    links.append('')
    rows.append('|Package             |Link                       |Feature                    |')
    rows.append('|:-------------------|:--------------------------|:--------------------------|')
    
    for package in ['cms']:
        process(package, rows, links)
    for row in rows:
        print row
    for link in links:
        print link

def main():
    """"""

try:
    opts, args = getopt.getopt(sys.argv[1:], "h", [
        "app",
        "cms",
        "ims"
    ])
except getopt.GetoptError as err:
    print str(err)
    help()
    sys.exit(2)

try:
    for opt, arg in opts:
        if opt in ("-h", "--help"):
            help()
            sys.exit()
        elif opt == "--ims":
            ims()
        elif opt == "--cms":
            cms()
        elif opt == "--app":
            app()
        else:
            help()
            sys.exit()
except Exception, e:
    print traceback.format_exc(e)

if __name__ == "__main__":
    main()


