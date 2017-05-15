===========================================================
Examples and Makefile for uploading TSV files to Blackboard
===========================================================

Usage
-----

To convert ODS files into TSV files::

    make

To generate a single TSV file from individual spreadsheets::

    make upload.tsv

Motivation
----------

Blackboard provides `documentation on how to upload grades to an existing column`_,
but does not provide any examples. This repository has three:

- `<01.tsv>`_
- `<02.tsv>`_
- `<03.tsv>`_

.. _documentation on how to upload grades to an existing column: https://en-us.help.blackboard.com/Learn/Instructor/Grade/Grading_Tasks/Work_Offline_With_Grade_Data

These are generated from the OpenDocument spreadsheets using a `<Makefile>`_.
It can also concatenate them into a single file called ``upload.tsv``.

Setup
-----

The example ODS files use this example column header::

    Quiz 3 [Total Pts: 10] |664617

Your column names will be different.
To get the correct column names from Blackboard:

#. Select "Grade Center", then click "Full Grade Center".

#. Hover over "Work Offline", then click "Download".

#. In "Select Data to Download", choose "Full Grade Center".

#. In "Delimited Type" choose either "Comma" or "Tab".

#. Under "Download Location", choose "My Computer".

#. Click "Submit".

#. Click "DOWNLOAD".

#. The resulting CSV or TSV file has all the necessary column names.
