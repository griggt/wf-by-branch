#!/usr/bin/env bash
set -eux

echo "Pull request submitted by $AUTHOR";
signed=true
if [ "$signed" = "true" ] ; then
  echo "CLA check for $AUTHOR successful";
else
  echo "CLA check for $AUTHOR failed";
  echo "Please sign the Scala CLA to contribute to the Scala compiler.";
  echo "Go to https://www.lightbend.com/contribute/cla/scala and then";
  echo "comment on the pull request to ask for a new check.";
  echo "";
  echo "Check if CLA is signed: https://www.lightbend.com/contribute/cla/scala/check/$AUTHOR";
  exit 1;
fi;
