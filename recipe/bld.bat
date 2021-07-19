mkdir build_casadi
cd build_casadi

cmake ../^
    -GNinja ^
    -DCMAKE_BUILD_TYPE=Release^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DMATH_LIBRARY_BACKEND="Casadi"^
  	-DBUILD_EXAMPLE=OFF^
    -DMODULE_ACTUATORS=ON^
    -DMODULE_MUSCLES=ON^
    -DBINDER_PYTHON3=ON^
      -DPython3_EXECUTABLE="%PYTHON%"^
   	-DBINDER_MATLAB=OFF
ninja install

cd ..
mkdir build_eigen
cd build_eigen
cmake ../^
    -GNinja ^
    -DCMAKE_BUILD_TYPE=Release^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DMATH_LIBRARY_BACKEND="Eigen3"^
  	-DBUILD_EXAMPLE=OFF^
    -DMODULE_ACTUATORS=ON^
    -DMODULE_MUSCLES=ON^
    -DBINDER_PYTHON3=ON^
      -DPython3_EXECUTABLE="%PYTHON%"^
   	-DBINDER_MATLAB=OFF
ninja install
