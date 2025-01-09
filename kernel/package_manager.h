#ifndef PACKAGE_MANAGER_H
#define PACKAGE_MANAGER_H

void init_package_manager();
void install_package(const char *package_name);
void uninstall_package(const char *package_name);

#endif