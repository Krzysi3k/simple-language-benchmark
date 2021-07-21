import time

def silnia(n):
    if n > 1:
        result = silnia(n-1)
        return result * n
    return 1


if __name__ == '__main__':
    started = time.time()
    for i in range(1,10001):
        silnia(15)
        for x in range(1,10001):
            if x == 9876:
                break

    print(f"finished in: {round((time.time() - started)*1000, 4)}ms")