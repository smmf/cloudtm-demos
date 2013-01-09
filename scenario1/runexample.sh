#!/bin/bash

BACKEND=pt.ist.fenixframework.backend.infinispan.InfinispanCodeGenerator

while [ -n "$1" ]; do
  case $1 in  
    -fenix-framework) shift 1;;
    -infinispan) BACKEND=pt.ist.fenixframework.backend.infinispan.InfinispanCodeGenerator; shift 1;;
    -ogm) BACKEND=pt.ist.fenixframework.backend.ogm.OgmCodeGenerator; shift 1;;
    -h|-help) echo "Usage: $0 [-fenix-framework] [-infinispan] [-ogm]"; exit 0;;
    -*) echo "Unknown Option '$1'"; shft 1;;
  esac
done

MAVEN_OPTS="-Xmx1G" mvn package exec:java -Dfenixframework.code.generator=$BACKEND -DskipTests -Dexec.mainClass="test.MainApp" $*
