##################
GAUSSIAN launchers
##################

This documentation can be used for both ``G09_launcher`` and ``G16_launcher``. From now on, in this document the generic notation ``GXX_launcher`` is used.


SYNOPSIS
========

.. code-block::

    GXX_launcher [options] <.com> ...


DESCRIPTION
===========

Advanced launcher for Gaussian calculation jobs at *memento*/*cierzo*.

To use this script type the name of the launcher, followed by the optional options related to computational resources and lastly put the name of one or several Gaussian input files, with the extension ``.com`` or ``.gjf``.

For every input file (e.g.: *h2o.com*) a new job file (*h2o.job*) is created with the resources to be requested to the queue system and instructions to run the job. After the job is submitted, this file is moved to a folder called *jobs* in the *home* directory. Possible output/error messages produced by the queue manager or system while running the calculation are redirected to a file (*h2o.msg*) in a folder called *msg* in the *home* directory.

The result of the calculation is placed in a log file (*h2o.log*) in the same directory as the input file. If no chk file is specified in the input file, one is created (*h2o.chk*) by default in the same directory. If a *%chk* directive is found in the input file, that will be the one used. Nevertheless, it can be explicitly ignored and be overwritten by the default one with the option ``--ign-chk``.

A formatted checkpoint file (*h2o.fchk*) can be requested to be generated automatically at the end of the calculation. To do so, use the option ``--fchk``.

The computational resources to use and request (CPU cores and RAM memory) can be read directoy from the directives *%NProc*/*%NProcShared* and *%Mem* in the input file. If not specified, default values are used and the input file is modified accordingly. These values can also be overwritten by the options ``--cores`` and ``--memory``, respectively.

This is a standalone script. No dependencies a required besides ``bash`` shell. It can be placed in any directory. It can also be shared or renamed.