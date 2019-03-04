# Nintendo Switch: Copy files from old microSD card to new microSD card

I'm frustrated every time I upgrade my microSD card in my Nintendo Switch, because no matter what I did before writing the _switchcp.bat_ batch file, nothing seemed to work. Everything I'd do would eventually make a microSD card unreadable by my Switch.

After toying around with this problem for hours, below are some conclusions I've drawn. I can't take responsability for any data loss or damage to your systems. However, I do hope they can help you:

- **Don't copy your files using macOS or Linux.** This is a big one. The ExFAT file system used by microSD cards of large capacity (microSDHC or microSDXC) is a proprietary file system by Microsoft. No matter how much licencing was negotiated between OS makers or how much backward engineering was done, only Windows seems to get reading and writing files on ExFAT file systems right. As a Mac user, I was determined to use macOS to do the job, until I tried with a Windows VM and saw all my problems vanished. The main problem seems to be when new folders are created: oddly enough, **if a new folder is created in macOS, it is not readable or writable by the Nintendo Switch.** (Not sure about Linux.)

- **No matter how much your memory card can hold, the Switch will only support up to 1,000 video files on it.** Might be something you want to keep in mind if you're considering buying a new memory card.

- **No matter how well you copy your files, you will always have to redownload all the software.** Yes, if a microSD card is in your Nintendo Switch and you download games, they will be stored on your memory card in `/Nintendo/Contents`. But if you transfer memory cards, don't bother copying that folder; all the software will have to be redownloaded no matter what.

- **Use the Nintendo Switch to format your microSD card.** [Nintendo recommends](https://en-americas-support.nintendo.com/app/answers/detail/a_id/220) the [SD Memory Card Formatter](https://www.sdcard.org/downloads/formatter_4/). That didn't seem to help on macOS. You're better off [using the Nintendo Switch to format your microSD card](https://en-americas-support.nintendo.com/app/answers/detail/a_id/22398/~/how-to-format-a-microsd-card).

- **Back up your files.** No matter what you do, it's a good idea to back up the `Album` and `save` folders found in the `Nintendo` folder of your memory card first. Don't bother copying `Contents`: as mentioned above, that folder contains the downloaded software and is always cleared before using a new memory card.

- **Use _switchcp.bat_ to copy files.** I wrote a batch file for Windows which you can use to copy files between two memory cards. Or, if you need to, you can use the script to copy the files from your old card to the hard drive, then from the hard drive to your new card. To use it:

    - Save _switchcp.bat_ on your Desktop.
    - Open the Command Prompt: search for `cmd` in the Start Menu.
    - Change into the Desktop folder: type `cd Desktop` then press `Enter`.
    - Run the script without arguments for more instructions: type `switchcp.bat` without arguments then press `Enter`.

Hope the above helps your upgrade to a bigger card. If you have any questions, please comment below. Feel free to also submit patches.

Happy gaming!