INIT_DIR=$(pwd)
SCRIPT_DIR=$(dirname $0)

cd "${SCRIPT_DIR}/buildroot"
make distclean
cd ${INIT_DIR}