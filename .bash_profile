
alias ll='ls -lG'

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BLUE=`tput setaf 4`
RESET_COLOR=`tput sgr0`

TOOL_HOME=~/data/tool
echo tool directory: [$BLUE$TOOL_HOME]$RESET_COLOR

SCALA_HOME=$TOOL_HOME/scala/scala-2.10.2
SBT_BIN=$TOOL_HOME/sbt/bin
PLAY_HOME=$SCALA_HOME/play-2.1.0

export GROOVY_HOME=$TOOL_HOME/groovy/groovy-1.8.6
export GRADLE_HOME=$TOOL_HOME/groovy/gradle-1.11

export M2_HOME=$TOOL_HOME/maven/apache-maven-3.3.9
MAVEN_BIN=$M2_HOME/bin
export MAVEN_OPTS=-Xmx1024m

export ANDROID_HOME=$TOOL_HOME/android-sdk
GIT_HOME=/usr/local/git
BIN_HOME=~/bin

PATH=$PATH:$SCALA_HOME/bin:$GROOVY_HOME/bin:$PLAY_HOME:$GRADLE_HOME/bin
export PATH=$PATH:$GIT_HOME/bin:$MAVEN_BIN:$SBT_BIN:$BIN_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# print the version of the tools
echo sbt version: $GREEN$(sbt --version 2>&1 | grep version | cut -d ' ' -f4)$RESET_COLOR
echo maven version: $GREEN$(mvn -version 2>&1 | grep Apache | cut -d' ' -f3)$RESET_COLOR
echo python version: $GREEN$(python --version 2>&1 | cut -d' ' -f2)$RESET_COLOR
echo java version: $GREEN$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')$RESET_COLOR
echo scala version: $GREEN$(scala -version 2>&1 | cut -d' ' -f5)$RESET_COLOR


# added by Anaconda3 4.3.1 installer
export PATH="/Users/levi/anaconda/bin:$PATH"
