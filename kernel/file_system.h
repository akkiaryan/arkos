#ifndef FILE_SYSTEM_H
#define FILE_SYSTEM_H

void init_file_system();
void create_file(const char *filename);
void write_to_file(const char *filename, const char *data);
void delete_file(const char *filename);

#endif