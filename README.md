# puppet-infrastructure-automation
Puppet Manifests for IT Automation: User management and LAMP Stack setup.
This repository contains Puppet manifests for automating IT infrastructure setup. The repository focuses on two key areas:

1. User Management (Part 3)
The server_users_groups.pp file defines the users and groups that should exist on a server.
It manages:
Creation of users and their home directories.
Assignment of groups to users.
Configuration of login shells and other user properties.
This ensures consistent user management across servers.
2. LAMP Stack Setup (Part 4)
The lamp_stack_server.pp file defines the installation and configuration of a basic LAMP (Linux, Apache, MySQL, PHP) stack.
It automates:
Installation of required packages like Apache2, PHP, and PHP-MySQL.
Configuration of Apache2 as a running service.
Deployment of a PHP info page (phpinfo.php) to test PHP functionality.
This ensures the server is ready to host web applications.

