export JDK_VERSION_SHORT=17.0.2
export INSTALL_ROOT=/downloads

if [ ! -d "${INSTALL_ROOT}/jdk-${JDK_VERSION_SHORT}" ];
then
	echo "Installing Java 'jdk-${JDK_VERSION_SHORT}'"
  mkdir -p "${INSTALL_ROOT}" && cd "${INSTALL_ROOT}" && \
    wget --show-progress wget https://download.java.net/java/GA/jdk${JDK_VERSION_SHORT}/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-${JDK_VERSION_SHORT}_linux-x64_bin.tar.gz  && \
    tar -xzf openjdk-${JDK_VERSION_SHORT}_linux-x64_bin.tar.gz
fi
echo "Java 'jdk-${JDK_VERSION_SHORT}' already installed"
