mkdir build
cd build

cmake -G Ninja ^
      -DDCHEMICALFUN_PYTHON_INSTALL_PREFIX="%PREFIX%" ^
      -DPYTHON_EXECUTABLE:FILEPATH="%PYTHON%" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_INCLUDE_PATH:PATH="%LIBRARY_INC%" ^
      -DXGEMS_BUILD_DEMOS=OFF ^
      ..

if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1

