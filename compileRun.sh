pushd .

./premake/premake5linux clean
./premake/premake5linux gmake2

make

popd
