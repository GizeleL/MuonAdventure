# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu20/geant4-v11.1.3/work/TestEm17

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu20/geant4-v11.1.3/work/TestEm17/build

# Include any dependencies generated for this target.
include CMakeFiles/TestEm17.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestEm17.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestEm17.dir/flags.make

CMakeFiles/TestEm17.dir/TestEm17.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/TestEm17.cc.o: ../TestEm17.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestEm17.dir/TestEm17.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/TestEm17.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/TestEm17.cc

CMakeFiles/TestEm17.dir/TestEm17.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/TestEm17.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/TestEm17.cc > CMakeFiles/TestEm17.dir/TestEm17.cc.i

CMakeFiles/TestEm17.dir/TestEm17.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/TestEm17.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/TestEm17.cc -o CMakeFiles/TestEm17.dir/TestEm17.cc.s

CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorConstruction.cc

CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorConstruction.cc > CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.i

CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorConstruction.cc -o CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.s

CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o: ../src/DetectorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorMessenger.cc

CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorMessenger.cc > CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.i

CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/DetectorMessenger.cc -o CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.s

CMakeFiles/TestEm17.dir/src/HistoManager.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/HistoManager.cc.o: ../src/HistoManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TestEm17.dir/src/HistoManager.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/HistoManager.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoManager.cc

CMakeFiles/TestEm17.dir/src/HistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/HistoManager.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoManager.cc > CMakeFiles/TestEm17.dir/src/HistoManager.cc.i

CMakeFiles/TestEm17.dir/src/HistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/HistoManager.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoManager.cc -o CMakeFiles/TestEm17.dir/src/HistoManager.cc.s

CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o: ../src/HistoMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoMessenger.cc

CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoMessenger.cc > CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.i

CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/HistoMessenger.cc -o CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.s

CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o: ../src/MuCrossSections.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuCrossSections.cc

CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuCrossSections.cc > CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.i

CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuCrossSections.cc -o CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.s

CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o: ../src/MuNuclearBuilder.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuNuclearBuilder.cc

CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuNuclearBuilder.cc > CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.i

CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/MuNuclearBuilder.cc -o CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.s

CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o: ../src/PhysListEmStandard.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysListEmStandard.cc

CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysListEmStandard.cc > CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.i

CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysListEmStandard.cc -o CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.s

CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o: ../src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsList.cc

CMakeFiles/TestEm17.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsList.cc > CMakeFiles/TestEm17.dir/src/PhysicsList.cc.i

CMakeFiles/TestEm17.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsList.cc -o CMakeFiles/TestEm17.dir/src/PhysicsList.cc.s

CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o: ../src/PhysicsListMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsListMessenger.cc

CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsListMessenger.cc > CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.i

CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PhysicsListMessenger.cc -o CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.s

CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o: ../src/PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PrimaryGeneratorAction.cc

CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PrimaryGeneratorAction.cc > CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/PrimaryGeneratorAction.cc -o CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/TestEm17.dir/src/RunAction.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/RunAction.cc.o: ../src/RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/TestEm17.dir/src/RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/RunAction.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/RunAction.cc

CMakeFiles/TestEm17.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/RunAction.cc > CMakeFiles/TestEm17.dir/src/RunAction.cc.i

CMakeFiles/TestEm17.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/RunAction.cc -o CMakeFiles/TestEm17.dir/src/RunAction.cc.s

CMakeFiles/TestEm17.dir/src/StackingAction.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/StackingAction.cc.o: ../src/StackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/TestEm17.dir/src/StackingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/StackingAction.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/StackingAction.cc

CMakeFiles/TestEm17.dir/src/StackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/StackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/StackingAction.cc > CMakeFiles/TestEm17.dir/src/StackingAction.cc.i

CMakeFiles/TestEm17.dir/src/StackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/StackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/StackingAction.cc -o CMakeFiles/TestEm17.dir/src/StackingAction.cc.s

CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o: CMakeFiles/TestEm17.dir/flags.make
CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o: ../src/SteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o -c /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/SteppingAction.cc

CMakeFiles/TestEm17.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm17.dir/src/SteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/SteppingAction.cc > CMakeFiles/TestEm17.dir/src/SteppingAction.cc.i

CMakeFiles/TestEm17.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm17.dir/src/SteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu20/geant4-v11.1.3/work/TestEm17/src/SteppingAction.cc -o CMakeFiles/TestEm17.dir/src/SteppingAction.cc.s

# Object files for target TestEm17
TestEm17_OBJECTS = \
"CMakeFiles/TestEm17.dir/TestEm17.cc.o" \
"CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o" \
"CMakeFiles/TestEm17.dir/src/HistoManager.cc.o" \
"CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o" \
"CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o" \
"CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o" \
"CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o" \
"CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o" \
"CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o" \
"CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/TestEm17.dir/src/RunAction.cc.o" \
"CMakeFiles/TestEm17.dir/src/StackingAction.cc.o" \
"CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o"

# External object files for target TestEm17
TestEm17_EXTERNAL_OBJECTS =

TestEm17: CMakeFiles/TestEm17.dir/TestEm17.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/DetectorConstruction.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/DetectorMessenger.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/HistoManager.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/HistoMessenger.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/MuCrossSections.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/MuNuclearBuilder.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/PhysListEmStandard.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/PhysicsList.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/PhysicsListMessenger.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/PrimaryGeneratorAction.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/RunAction.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/StackingAction.cc.o
TestEm17: CMakeFiles/TestEm17.dir/src/SteppingAction.cc.o
TestEm17: CMakeFiles/TestEm17.dir/build.make
TestEm17: /usr/local/lib/libG4Tree.so
TestEm17: /usr/local/lib/libG4FR.so
TestEm17: /usr/local/lib/libG4GMocren.so
TestEm17: /usr/local/lib/libG4visHepRep.so
TestEm17: /usr/local/lib/libG4RayTracer.so
TestEm17: /usr/local/lib/libG4VRML.so
TestEm17: /usr/local/lib/libG4ToolsSG.so
TestEm17: /usr/local/lib/libG4OpenGL.so
TestEm17: /usr/local/lib/libG4vis_management.so
TestEm17: /usr/local/lib/libG4modeling.so
TestEm17: /usr/local/lib/libG4interfaces.so
TestEm17: /usr/local/lib/libG4persistency.so
TestEm17: /usr/local/lib/libG4error_propagation.so
TestEm17: /usr/local/lib/libG4readout.so
TestEm17: /usr/local/lib/libG4physicslists.so
TestEm17: /usr/local/lib/libG4run.so
TestEm17: /usr/local/lib/libG4event.so
TestEm17: /usr/local/lib/libG4tracking.so
TestEm17: /usr/local/lib/libG4parmodels.so
TestEm17: /usr/local/lib/libG4processes.so
TestEm17: /usr/local/lib/libG4digits_hits.so
TestEm17: /usr/local/lib/libG4track.so
TestEm17: /usr/local/lib/libG4particles.so
TestEm17: /usr/local/lib/libG4geometry.so
TestEm17: /usr/local/lib/libG4materials.so
TestEm17: /usr/local/lib/libG4graphics_reps.so
TestEm17: /usr/lib/x86_64-linux-gnu/libXmu.so
TestEm17: /usr/lib/x86_64-linux-gnu/libXext.so
TestEm17: /usr/lib/x86_64-linux-gnu/libXt.so
TestEm17: /usr/lib/x86_64-linux-gnu/libICE.so
TestEm17: /usr/lib/x86_64-linux-gnu/libSM.so
TestEm17: /usr/lib/x86_64-linux-gnu/libX11.so
TestEm17: /usr/lib/x86_64-linux-gnu/libGL.so
TestEm17: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
TestEm17: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
TestEm17: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
TestEm17: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
TestEm17: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
TestEm17: /usr/lib/x86_64-linux-gnu/libxerces-c.so
TestEm17: /usr/local/lib/libG4analysis.so
TestEm17: /usr/lib/x86_64-linux-gnu/libz.so
TestEm17: /usr/lib/x86_64-linux-gnu/libexpat.so
TestEm17: /usr/local/lib/libG4intercoms.so
TestEm17: /usr/local/lib/libG4global.so
TestEm17: /usr/local/lib/libG4clhep.so
TestEm17: /usr/local/lib/libG4ptl.so.2.3.3
TestEm17: CMakeFiles/TestEm17.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable TestEm17"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestEm17.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestEm17.dir/build: TestEm17

.PHONY : CMakeFiles/TestEm17.dir/build

CMakeFiles/TestEm17.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestEm17.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestEm17.dir/clean

CMakeFiles/TestEm17.dir/depend:
	cd /home/ubuntu20/geant4-v11.1.3/work/TestEm17/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu20/geant4-v11.1.3/work/TestEm17 /home/ubuntu20/geant4-v11.1.3/work/TestEm17 /home/ubuntu20/geant4-v11.1.3/work/TestEm17/build /home/ubuntu20/geant4-v11.1.3/work/TestEm17/build /home/ubuntu20/geant4-v11.1.3/work/TestEm17/build/CMakeFiles/TestEm17.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestEm17.dir/depend

