import random


def read_dictionary(file_path):
    with open(file_path, 'r') as file:
        return [line.strip() for line in file]


def get_random_word(word_list):
    return random.choice(word_list)


with open('message.csv', 'w') as messages:
    file_path = input('slowa.txt')
    words_list = read_dictionary(file_path)
    print('dictionary generated...')
    for i in range(1500):
        words = i * get_random_word(words_list)
        messages.write(f"MT700,something,something, {words}\n")

