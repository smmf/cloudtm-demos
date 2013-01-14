Cloudtm Demos
=============

# Scenario 1

Simple example with Fénix Framework to demonstrate how to use. This scenario allows you to try two differente backend: 

 * Hibernate OGM: uses Hibernate OGM to store the Domain Objects in Infinispan
 * Infinispan: uses Infinispan directly to store the Domain Objects

Execute the script in scenario1/runexample.sh to try. Use one of the following options;

 * -ogm: uses OGM backend
 * -infinispan: (selected by default) uses Infinispan backend

You can use the option -help to show the help message.

# Scenario 2

Similar to scenario 1 but with Hibernate Search enabled. See previous point to see how to start it.

# Scenario 3

Clustered version of scenario 2. In this scenario you have the change to set two processes (each one simulating a node) and you can configure if the data is replicated (i.e. it exists in both processes) or if it is distributed (it exists in one of the processes)

The Hibernate Search indexes are shared in both processes by the filesystem in /tmp/lucenedirs

Execute the script in scenario1/runexample.sh to try. Use one of the following options;

 * -ogm: uses OGM backend
 * -infinispan: (selected by default) uses Infinispan backend

and then, select one of the following options

 * -repl: (selected by default) replicated data
 * -dist: distributed data

You can use the option -help to show the help message.

# Scenario 4

Similiar to scenario 3 but it uses a persistence cache store. The data written by both processes are stored in the file system in /tmp/fs-store

See previous point to see how to start it.
