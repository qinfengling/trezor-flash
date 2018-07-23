# trezor-flash
Trezor flash utility

It is an easy to use script to program the bootloader for Trezor One.

You don't need to download and compile the source code by yourself.

Flash the bootloader into Trezor one, then you can upgrade the firmware through https://trezor.io/start

## Dependency

### Software

- OpenOCD 0.10.0

### Hardware
- J-Link

## Program

```bash
make flash_jlink
```

## FAQ
- How to build the bootloader ?

  Find the guide in offical repo, https://github.com/trezor/trezor-mcu#how-to-build-the-trezor-bootloader-and-firmware

  I generate the bootloader with the following:

  ```bash
  git clone https://github.com/trezor/trezor-mcu.git
  cd trezor-mcu
  git checkout v1.6.2 -b v1.6.2
  ./build.sh bl1.5.0
  ```

  Then bootloader will be reside in `./build/` directory.

 - How to enter the bootloader mode ?

   Press both button, then power on the Trezor, you can see the bootloader screen
