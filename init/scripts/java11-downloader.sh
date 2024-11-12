export JDK_VERSION_SHORT=11
export INSTALL_ROOT=/downloads

if [ ! -d "${INSTALL_ROOT}/jdk-${JDK_VERSION_SHORT}" ];
then
	echo "Installing Java 'jdk-${JDK_VERSION_SHORT}'"
  mkdir -p "${INSTALL_ROOT}" && cd "${INSTALL_ROOT}" && \
    wget --show-progress https://download.java.net/java/ga/jdk${JDK_VERSION_SHORT}/openjdk-${JDK_VERSION_SHORT}_linux-x64_bin.tar.gz  && \
    tar -xzf openjdk-${JDK_VERSION_SHORT}_linux-x64_bin.tar.gz
fi
echo "Java 'jdk-${JDK_VERSION_SHORT}' already installed"
