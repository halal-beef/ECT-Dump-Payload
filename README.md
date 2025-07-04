# ECT-Dump-Payload

Patches to make a payload that can dump the Exynos Characteristics Table on a device

## How to use

- Clone lk3rd by doing ```git clone https://github.com/exynos990-mainline/lk3rd --single-branch```

- Apply the patch in this repo by doing ```git am 0001-ECT-Dump-Payload.patch```

- Build lk3rd normally by doing ```./build.sh <target-board>```

- Flash using your preferred method

- Boot the device

- Wait for it to dump and wait for it to reboot into recovery

- Run the second stage command by doing ```./second_stage.sh```

- Let it do it's magic

- You have your ECT dump.
