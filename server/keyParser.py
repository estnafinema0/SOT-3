import json

def main():
    with open('keys.json') as keys:
        keys = json.load(keys)
        print(keys['secretKey'])

if __name__ == '__main__':
    main()
