
def length_of_longest_substring(s):
    start = max_length = 0
    used_char = {}

    for i in range(len(s)):
        if s[i] in used_char and start <= used_char[s[i]]:
            start = used_char[s[i]] + 1
        else:
            max_length = max(max_length, i - start + 1)

        used_char[s[i]] = i
    return max_length


print(length_of_longest_substring("abcad"))
print(length_of_longest_substring(""))
print(length_of_longest_substring("bbbb"))
