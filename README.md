ArkOS

ArkOS is a minimalist operating system designed as a learning project to understand the fundamentals of operating system development. It includes modules for file systems, calculators, package management, logical volume management (LVM), and more. This project provides a basic foundation for kernel development and is ideal for students, hobbyists, or anyone interested in low-level programming.

Features
	•	File System Management: Includes placeholders for managing and organizing files.
	•	Basic Calculator: A module to perform basic arithmetic operations (to be extended).
	•	Logical Volume Manager (LVM): A starting point for handling storage allocation and volumes.
	•	Package Manager: Manages simple packages (conceptual functionality).
	•	Web Server Module: Provides a placeholder for networking and server functionality.
	•	Fail2Ban-like Module: Placeholder for security and banning malicious activities.
	•	Container Management: Basic structure for containerized applications.

This project is a work-in-progress and serves as a skeleton for exploring kernel development.

Project Structure

ArkOS/
├── Makefile              # Build system
├── include/
│   └── kernel.h          # Shared kernel headers
└── kernel/
    ├── main.c            # Entry point of the OS
    ├── file_system.c     # File system module
    ├── calculator.c      # Calculator module
    ├── lvm.c             # Logical volume manager module
    ├── package_manager.c # Package manager module
    ├── web_server.c      # Web server module
    ├── fail2ban.c        # Fail2Ban-like module
    ├── container.c       # Container management module

Prerequisites

Before building and running ArkOS, ensure your system meets the following requirements:
	•	A Linux-based OS (Debian or Ubuntu recommended)
	•	Installed dependencies:

sudo apt update
sudo apt install -y build-essential gcc-multilib nasm qemu

How to Build and Run ArkOS
	1.	Clone the repository:

git clone https://github.com/akkiaryan/ArkOS.git
cd ArkOS


	2.	Build the kernel:

make

This will generate the binary file kernel/arkos.bin.

	3.	Run ArkOS using QEMU:

qemu-system-i386 -kernel kernel/arkos.bin


	4.	Clean up the project:
If you want to remove compiled files and start fresh:

make clean

How It Works

When you run arkos.bin in QEMU, the following happens:
	1.	Bootstrapping: The kernel initializes and calls the main() function in kernel/main.c.
	2.	Module Initialization: Modules like file_system, calculator, and others are initialized.
	3.	Infinite Loop: The kernel runs an infinite loop, simulating a simple OS that remains active.

Contributing

We welcome contributions! Here’s how you can get involved:
	1.	Fork the repository.
	2.	Create a branch for your feature or bug fix:

git checkout -b feature-name


	3.	Make your changes and commit them:

git commit -m "Description of your changes"


	4.	Push to your branch:

git push origin feature-name


	5.	Create a pull request and describe your changes.

Use Cases

ArkOS is primarily an educational tool. It can be used for:
	•	Learning Kernel Development: Understand how kernels work and interact with hardware.
	•	Exploring Low-Level Programming: Work on C programming for system-level applications.
	•	Building Custom Modules: Extend functionality by adding your own modules.
	•	Collaborative Learning: Share and improve the project with the open-source community.

Planned Improvements

Future iterations of ArkOS may include:
	•	Actual file system operations (e.g., creating, reading, writing files)
	•	Network functionalities for the web server module
	•	Arithmetic and scientific calculators
	•	Basic security mechanisms for the Fail2Ban module
	•	Advanced containerization features

Acknowledgments
	•	Inspired by: Various online tutorials on kernel development and hobbyist OS projects.
	•	Thanks to: The open-source community for tools like QEMU and GCC.

Contact

If you have any questions or suggestions, feel free to reach out:
	•	Email: akkiaryan.education@gmail.com
	•	GitHub Issues: Submit your issue here.

This README provides clear instructions for setting up, running, and contributing to ArkOS. 
