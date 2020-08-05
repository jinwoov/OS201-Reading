# Imaging, Backup, and Recovery

## How to Erase a Hard Drive Using DBAN

- DBAN is Darik's Boot And Nuke is free data destruction program
- Includes application to operating system
- Process for DBAN:
    1. Download the program
    2. Save DBAN ISO file into your computer
    3. Burn DBAN to a USB or optical drives
    4. Restart and boot into DBAN
    5. Choose option to delete the drive
        - F2 and F4 is information only
        - F3 is to erase everything in it
    6. Immediately start using DBAN with Quick Command, choosing F3
    7. Choose which drive you want to wipe out
    8. Wait for the deleting process to finish
    9. Verify that DBAN has successfully deleted the drive

## How to: Get started with Veeam Backup Free Edition
- VeeamZIP is one of the software that can create ad-hoc backup of running VM
- Using VeeamZip you can compress the file to store it in lower backup storage.
- User uses VeeamZip before updating their system
- You want to archive the VM, VeeamZip comes handy
    - You need to copy a VM to remote host or test Lab.
- Veeam Backup Free Edition supports data recovery scenarios
    - Restoring VM files: it restores Vm files directly from deduplicate, compressed backups without having to extract the VM
    - Restoring an entire VM: You can restore VM to specific location
    - Restoring VM disk (VMware): you can simply restore affected sector
    - Restoring guest OS files
    - Restoring individual Microsoft Exchange and SharePoint items: easy work of restoring Exchange and SharePoint.
- Quick Migration
    - It helps you migrate live VM between hosts or datastores.
- v7 features
    - Native tape support: tapes are portable and long-term storage is inexpensive
    - Advanced support for VMware vCloud: it allows VMware vCloud director to enhance backup and recovery support
