===========================================================
Examples and Makefile for uploading TSV files to Blackboard
===========================================================

Usage
-----

#. Set up spreadsheets.
#. Enter grades into spreadsheet.
#. Convert to TSV upload format.
#. Upload to Blackboard.

To convert ODS files into TSV files::

    make

To generate a single TSV file from individual spreadsheets::

    make upload.tsv

Motivation
----------

`Blackboard Learn`_ provides the means to work offline using a spreadsheet
and then upload the grades later.
There is some official documentation on
`how to upload grades to an existing column`_,
but it lacks examples. This repository has three:

- `<01.tsv>`_
- `<02.tsv>`_
- `<03.tsv>`_

.. _Blackboard Learn: https://en.wikipedia.org/wiki/Blackboard_Learn
.. _how to upload grades to an existing column: https://en-us.help.blackboard.com/Learn/Instructor/Grade/Grading_Tasks/Work_Offline_With_Grade_Data

These are generated from `OpenDocument spreadsheets`_ using a `<Makefile>`_.
It can also concatenate them into a single file called ``upload.tsv``.

.. OpenDocument spreadsheets: https://en.wikipedia.org/wiki/OpenDocument

(The mock data is drawn from
folk songs, historical figures, and literary characters.
No actual grades or personal information is stored in these spreadsheets.)

Setup
-----

The example ODS files use this example column header::

    Quiz 3 [Total Pts: 10] |664617

Your column names will be different.
To get the correct column names from Blackboard:

#. Select "Grade Center", then click "Full Grade Center".

#. Wait for "Grade Center" page to load.

#. Hover over "Work Offline", then click "Download".

#. Wait for  "Download Grades" page to load.

#. In "Select Data to Download", choose "Full Grade Center".

#. In "Delimited Type" choose either "Comma" or "Tab".

#. Under "Download Location", choose "My Computer".

#. Click "Submit".

#. Wait for  "Download Grades" page to load.

#. Click "DOWNLOAD".

#. Save the resulting CSV or TSV file.

#. Use the resulting file as a template to make a spreadsheet
   ready for grade entry.

Upload
------

Once the grades have been entered and converted to text files,
they need to be uploaded to Blackboard:

#. Select "Grade Center", then click "Full Grade Center".

#. Hover over "Work Offline", then click "Upload".

#. Wait for "Upload Grades" page to load.

   Note this message:

       To upload grades from external sources into the Grade Center, the
       external file must be formatted to synch external data to the Grade
       Center data. Data is synched by using unique identifiers for each
       Student and each existing Column. 

#. Under "Attach File", choose "Browse My Computer".

#. Use file picker dialogue to choose the desired TSV file.

#. Leave "Delimiter Type" as "Auto".

#. Click "Submit".
