# Practice 3. Dynamic DNS

## Name: Francisco Mateos Bufí

Here is a **concise, clear list of instructions** describing what the project *should do* using **Vagrant + VirtualBox + Ansible**, without explaining DHCP/DNS logic.

---

# Instructions for the Project (Vagrant + VirtualBox + Ansible)

1. **Create a `Vagrantfile`** that defines multiple virtual machines using VirtualBox as the provider.

   * Assign each machine a hostname.
   * Configure private network interfaces with static IPs.
   * Allocate resources (RAM/CPU) as needed.
   * Ensure SSH access is available for Ansible.

2. **Set up automatic provisioning in Vagrant** so that each VM is configured using Ansible when it is created.

   * Use `ansible` or `ansible_local` as the provisioner.
   * Map each VM to the correct Ansible playbook.

3. **Prepare an Ansible inventory file (`inventory.yml`)** that groups the machines according to their roles.

   * Define hostnames, IP addresses, and connection options.
   * Organize machines logically (e.g., DNS server, DHCP server, clients).

4. **Create Ansible playbooks** that fully automate the configuration of each virtual machine.

   * Install required packages using the appropriate modules.
   * Deploy configuration files.
   * Modify system settings through Ansible tasks.
   * Manage and restart services as needed.
   * Ensure every playbook is idempotent and repeatable.

5. **Configure `ansible.cfg`** to define default settings for your automation.

   * Set the inventory path.
   * Disable host key checking.
   * Define interpreter and connection behaviors.

6. **Add a script (`script.sh`)** if desired, to simplify running the entire environment with a single command.

7. **Run the environment** using:

   ```bash
   vagrant up
   ```

   This should automatically:

   * Create all virtual machines.
   * Configure them using Ansible.

8. **Shut down or remove the environment** for cleanup:

   ```bash
   vagrant halt
   vagrant destroy -f
   ```

---

If you want, I can turn this into a **minimal README**, a **step-by-step guide**, or a **checklist style version**.
