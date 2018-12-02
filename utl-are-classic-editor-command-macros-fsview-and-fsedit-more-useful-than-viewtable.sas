Classic editor command macros fsview and fsedit more useful than viewtable

github
https://tinyurl.com/y8soybkv
https://github.com/rogerjdeangelis/utl-are-classic-editor-command-macros-fsview-and-fsedit-more-useful-than-viewtable

Stackoverflow
https://tinyurl.com/ycneqh6p
https://stackoverflow.com/questions/53482852/how-do-i-write-sas-code-to-open-a-viewtable-window

In the time that I open, mouse surf and close viewtable, I can do the following.

Keep in mind the 'beast' has three screens with maximum screen real estate and a programmable mouse.
.
Also keep in mind that my left hand hovers over the shift, ctrl and alt keys and my right
hand is on my six button mouse.

Its all about sub second response time(doing useful stuff in less than a second)

If interested in last dataset

  1. Shift RMB and 'proc print 40 obs' appear in the output window right in front of my eyes
     and in the paste buffer. If I want to paste into program editor(<100ms)
  2. Shift left side button and proc contents appears on output window(<100ms)
  3. on any command line 'avg' proc means in output window(<2sec)
  4. 'frq sex' on any command line and frequency also 'unq name' dmp (vertical print middle ob with type & length)
     'unv' (univarate or 'unv agemit)' ... 'l40' 'con'(<2sec)

If interested last dataset in unix using sas connect (rsubmit)
  add x to command macros
  conx
  l40x
  frqx
  avgx
  cntx
  unvx  (and about 40 others)

If interested in highlighted dataset in unix or windows(not last dataset).
Just highlight the dataset and add h to the command macros

  conh
  l40h
  frqh
  avgh
  cnth
  unvh

 UNIX (with SAS Connect)

  conxh
  l40xh
  frqxh
  avgxh
  cntxh
  unvxh

All functionality in sas clear text code, that automatically is availble
with each new sas version. I bulit my performance pack piece by
piece over the last 40 years. Classic SAS.

Only the 1980's classic editor supports all this functionality


Hard to find documentation on fsview and fsedit


In addition to the global commands that are discussed in SAS/FSP Software Global Commands,
you can use the following commands while editing observations:

You can script fsv/fse with command macros and have fsv operate on higlighted text(datasets)
in the classic editor.
You can have a additional set of function keys and mouse actions for fse and fse.

 Scrolling
n
=n
=variable
BACKWARD
BOTTOM
FORWARD
LEFT
RHT
TOP

 Searching
FIND search-criterion <... search-criterion-n>
FIND@ search-criterion <... search-criterion-n>
LOCATE | LOC search-value
LOCATE: | LOC: search-string
NAME <variable>
RFIND
SEARCH search-string
SEARCH@ search-string <... search-string-n> STRING variable <... variable-n>
WHERE <<ALSO> expression> | <UNDO | CLEAR>

 Editing Observations
ADD
CANCEL
CURSOR
DELETE
DUP
OVERRIDE
UPDATE <RECORD | MEMBER>

 Saving Data
AUTOSAVE <n>
END
SAVE

 Creating Letters and Reports
(These commands are valid only if the LETTER= option is used in the PROC FSEDIT statement.)
EDIT letter-name LETTER SEND letter-name

 Other
KEYS
MODIFY <password>
REREAD


proc fsedit data=lib.table screen=lib.catalog.name.screen; run;

or

fse lib.table lib.catalog.name.screen

This will create an entry in a catalog that you can then modify.  You can change the layout of the
columns on the screen, you can change the display attributes, and some editing functionality.
You can also write SCL code that will execute behind the screen, controlling what happens on the screen -
data validation, custom command functionality, and just about anything you can think of.

The online documentation has information about the commands available for each of those screens.
As for command macros, you can stack multiple commands together separated by semicolons. In FSEDIT and
FSVIEW, you can use SCL to process commands.


