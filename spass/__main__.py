import os
import spass.device

def main():
    print(spass.device.get_device_id())
    print(spass.device.get_username())
    print(spass.device.get_hostname())

if __name__ == "__main__":
    main()
