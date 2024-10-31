alias ll='ls -lG'

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BLUE=`tput setaf 4`
RESET_COLOR=`tput sgr0`

TOOL_HOME=~/data/tool
echo tool directory: $BLUE$TOOL_HOME]$RESET_COLOR

/usr/libexec/java_home -V
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_202`
#export JAVA_HOME=`/usr/libexec/java_home -v 11.0.14.1`
export JAVA_HOME=`/usr/libexec/java_home -v 17.0.05`

# use Homebrew python instead of system default MacOS 2.7
alias python=/usr/local/bin/python3

SCALA_HOME=$TOOL_HOME/scala/scala-2.13.1
export SBT_OPTS="-XX:MaxMetaspaceSize=512m -Xms2048m -Xmx4g"

GIT_HOME=/usr/local/git

export GO_HOME=/usr/local/go
export GOPATH=~/go

PATH=$PATH:$SCALA_HOME/bin:$GO_HOME/bin:/Users/levi/.ghcup/bin
export PATH=$PATH:$GIT_HOME/bin:$TOOL_HOME

# rust setup
source "$HOME/.cargo/env"

export ANDROID_HOME=/Users/levi/data/tool/android/sdk
echo android home: $GREEN$ANDROID_HOME$RESET_COLOR


# print the version of the tools
#echo sbt version: $GREEN$(sbt --version 2>&1 | grep version | cut -d ' ' -f4)$RESET_COLOR
echo maven version: $GREEN$(mvn -version 2>&1 | grep Apache | cut -d' ' -f3)$RESET_COLOR
echo python version: $GREEN$(python --version 2>&1 | cut -d' ' -f2)$RESET_COLOR
echo java version: $GREEN$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')$RESET_COLOR
echo scala version: $GREEN$(scala -version 2>&1 | cut -d' ' -f5)$RESET_COLOR
echo haskell version: $GREEN$(ghci --version | cut -d' ' -f8)$RESET_COLOR
echo go version: $GREEN$(go version | cut -d' ' -f3)$RESET_COLOR
echo rust version: $GREEN$(rustc --version | cut -d' ' -f2)$RESET_COLOR
echo node version: $GREEN$(node --version | cut -d' ' -f2)$RESET_COLOR
