
## Ubuntu Nvidia Driver-less Installation Issues
I had to modify the hidden `GRUB` files on the hard drive, and force the system to always display the boot menu.

1. Install minimal, driver-less Ubuntu on hard drive from USB
2. Plug your Ubuntu installation USB back in. Boot from the USB and select "Ubuntu (safe graphics)" to get back into the live desktop environment.
3. Use the Terminal to Access Hard Drive. Find your Ubuntu installation partition:
   ```bash
   sudo fdisk -l
   ```
4. Look for your internal drive (usually something like `/dev/sda2` or `/dev/nvme0n1p2`) formatted as `Linux filesystem`. 

   Mount your hard drive to the live environment (replace `sdXX` with your actual partition name, like `sdb2`):
   ```bash   
   sudo mount /dev/sdXX /mnt
   ```
5. Bind the core system directories so you can interact with it:
   ```bash
   for i in /dev /dev/pts /proc /sys /run; do sudo mount --bind $i /mnt$i; done
   ```
6. Log into your hard drive's operating system via the terminal:
   ```bash
   sudo chroot /mnt
   ```
7. Modify the Bootloader Configuration
   ```bash
   nano /etc/default/grub
   ```
   ```properties
   GRUB_TIMEOUT_STYLE=menu
   GRUB_TIMEOUT=10
   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nomodeset"
   ```
8. Save and exit: Press Ctrl + O, hit Enter to confirm, then press Ctrl + X to exit the text editor.
9. Apply the configuration changes to the bootloader:
   ```bash
   update-grub
   ```
10. Type exit to leave the hard drive environment, shut down the computer, unplug the USB, and turn it back on. 