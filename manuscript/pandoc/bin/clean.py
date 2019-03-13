#!/usr/bin/env python3

# Clean up text for using in vanilla non-xelatex LaTeX.
#
# usage: clean.py [-h] [input_file] [output]
#
# Recommended usage: Send the Markdown output to stdout (default) and pipe
# into pandoc for instant preprocessing:
#
#   clean.py document.md | pandoc -f markdown -t tex -o document.tex

# Load libraries
import argparse
import sys
import re

# Get command line arguments
parser = argparse.ArgumentParser(description='Clean up text for vanilla LaTeX.')
parser.add_argument('input_file', type=argparse.FileType('r'),
                    nargs='?', default=sys.stdin,
                    help='file to clean')
parser.add_argument('output', type=argparse.FileType('w'),
                    nargs='?', default=sys.stdout,
                    help='the name of the output file (defaults to stdout)')
args = parser.parse_args()

# Clean up the text
def clean(text):
    # Unicode stuff
    text = re.sub("×", r"\\(\\times\\)", text)
    text = re.sub("−", r"\\(-\\)", text)

    # Footnotes to endnotes
    text = re.sub(r"\\footnote\{", r"\\endnote{", text)

    # Add midrules to pseudo table headers!!
    text = re.sub(r"(\\\\)\nH\\textsubscript", "\\1\\\\midrule\nH\\\\textsubscript", text)
    text = re.sub(r"(\\\\)\nHuman rights issues &", "\\1\\\\midrule\nHuman rights issues &", text)
    text = re.sub(r"(\\\\)\nHuman rights issues, Government", "\\1\\\\midrule\nHuman rights issues, Government", text)

    # Simplify figure path
    text = re.sub(r"\\includegraphics{output/figures/", "\\\includegraphics{", text)
    
    return(text)


# All done!
with args.output as f:
    f.write(clean(args.input_file.read()))
