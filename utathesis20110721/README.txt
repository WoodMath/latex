Below are some common formatting problems with solutions.
Fri Jan 11 15:36:58 CST 2008, submitted by Darin Brezeale 
Wed Jul 20 10:58:01 CDT 2011, updated by Darin Brezeale


The LaTeX template consists of a set of .tex files for the various sample chapters as well a style file (utathesis.sty) that sets format values.  There is also a file called utaexample.tex that pulls the individual chapter files together to form the entire dissertation.


1)  The most common formatting problem is that the bottom margin of all pages is not between 1.25 and 1.5 inches.  The left and right margins are not between 1.25 and 1.5 inches.  This is true regardless of whether you are using LaTeX on Linux or Windows.

Solution:  When using LaTeX on a Linux operating system, one way to generate PDF documents is to use
	dvipdf utaexample.tex
The problem with this is that dvipdf defaults to a paper size of A4, which is longer and narrower than 8.5" by 11".  This affects the left, right, and bottom margins.  To produce a document with the correct dimensions, in Linux first generate the DVI file.  Convert this file to postscript, then convert the postscript file to PDF using the following two commands:

        dvips -t letter -Ppdf -G0 utaexample.dvi
        ps2pdf utaexample.ps

    If you are using LaTeX on Windows, you may (depending on how your 
    environment is configured) be able to open a command window and
    type 

       dvips -t letter -Ppdf -G0 utaexample.dvi
       ps2pdf utaexample.ps

    to generate a PDF with the correct dimensions.


2) Titles in the front matter and text longer than one line are appearing double-spaced in the front matter, but they should be single spaced.

Solution: The sample document included with the template show examples of this and how to correct them.  Basically, at the point where you have the section title, caption title, etc., you need to create two versions of it.  One version will appear at that location in the document, the other version will appear in the table of contents and will include formatting commands specifically for the table of contents.  YOU DO NOT HAVE TO CHANGE THE TEMPLATE ITSELF FOR THIS PROBLEM.



3)  You are submitting electronically, so you should not include a signature page.

Solution:  Simply remove the reference to the signature page in the file utaexample.tex and move the reference to the title page so that it occurs before the copyright page.


