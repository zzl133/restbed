# Copyright (c) 2013, 2014 Corvusoft

find_path( curl_INCLUDE curl/curl.h HINTS "/usr/include" "/usr/local/include" "/opt/local/include" "${CMAKE_SOURCE_DIR}/dependency/curl/include" )
find_library( curl_LIBRARY NAMES curl HINTS "/usr/lib" "/usr/local/lib" "/opt/local/lib" "${CMAKE_SOURCE_DIR}/dependency/curl/lib" )

if ( curl_INCLUDE AND curl_LIBRARY )
    set( CURL_FOUND TRUE )

    if ( NOT CURL_FIND_QUIETLY )
        message( STATUS "Found curl header: ${curl_INCLUDE}" )
        message( STATUS "Found curl library: ${curl_LIBRARY}" )
    endif ( )
else ( )
    if ( CURL_FIND_REQUIRED )
        message( FATAL_ERROR "Failed to locate curl!" )
    endif ( )
endif ( )