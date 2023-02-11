import os
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--dir')
    args = parser.parse_args()
    tasks = filter(lambda f: f.endswith(".sql"), os.listdir(args.dir))
    for filename in sorted(tasks, key=lambda x: int(x.split('.')[0][4:])):
        if not filename.endswith(".sql"):
            continue
        with open(f"{args.dir}/{filename}", "r") as f:
            print(filename[:-4])
            print("QUERY:")
            print(f.read())
        print()
        input()