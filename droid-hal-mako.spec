# These and other macros are documented in dhd/droid-hal-device.inc

%define device mako
%define vendor lge

%define vendor_pretty LG
%define device_pretty Nexus 4

%define installable_zip 1

# Add installed but unpackaged files
%define straggler_files \
/selinux_version\
/service_contexts\
%{nil}

%include rpm/dhd/droid-hal-device.inc
