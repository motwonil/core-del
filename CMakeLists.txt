cmake_minimum_required( VERSION 4.5 )
project( core-del VERSION 0.0.0 LANGUAGES CXX )

set( MO20_LIB ${PROJECT_NAME}_module )
# NOTE: temporary
set( MO20_APP ${PROJECT_NAME}_app )
# Private configuration under source directory
add_subdirectory( source )
add_library( mo20::${PROJECT_NAME} ALIAS ${MO20_LIB} )
