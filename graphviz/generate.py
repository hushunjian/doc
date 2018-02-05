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
--cms          process graphviz files."""
    print usage


def scan(path):
    rtn = []
    for dir_path, dir_names, file_names in os.walk(path):
        if file_names:
            for file_name in file_names:
                if dir_path == ".":
                    full_path = os.path.join(file_name)
                else:
                    full_path = os.path.join(dir_path, file_name)
                if full_path.endswith('.gv'):
                    rtn.append(full_path)
    return rtn

def process(package, rows, links):
    gv_files = scan('%s' % package)
    for gv_file in gv_files:
        svg_file = re.sub('.gv$', '.svg', gv_file)
        matched = re.match(r'(.*)(/)([^\.]*.gv)', gv_file)
        directory_name = "."
        if matched:
            directory_name = matched.group(1)
        simple_name = re.sub('.gv$', '', gv_file)
        gv_link = "%s.gv" % simple_name
        svg_link = "%s.svg" % simple_name
        simple_name = re.sub('^.*\/', '', simple_name)
        rows.append('|%-20s|[%s]|[%s]|' % (directory_name, gv_link, svg_link))
        links.append('[%s]: %s' % (gv_link, gv_file))
        links.append('[%s]: %s' % (svg_link, svg_file))

def cms():
    rows = []
    links = []
    links.append('')
    links.append('')
    rows.append('|路径           |源文件         |矢量图            |')
    rows.append('|:--------------|:--------------|:-----------------|')
    
    for package in ['.']:
        process(package, rows, links)
    for row in rows:
        print row
    for link in links:
        print link

def main():
    """"""

try:
    opts, args = getopt.getopt(sys.argv[1:], "h", [
        "cms",
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
        elif opt == "--cms":
            cms()
        else:
            help()
            sys.exit()
except Exception, e:
    print traceback.format_exc(e)

if __name__ == "__main__":
    main()


