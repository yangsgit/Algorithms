class Solution(object):
    max = 0
    max_sub = ""

    def longestPalindrome(self, s):
        """
        :type s: str
        :rtype: str
        """
        for i in range(len(s)):
            self.helper(i, i, s)
            self.helper(i, i + 1, s)
        return self.max_sub

    def helper(self, l, r, s):
        while l >= 0 and r < len(s) and s[l] == s[r]:
            l -= 1
            r += 1
        l += 1
        r -= 1
        if r - l + 1 > self.max:
            self.max = r - l + 1
            self.max_sub = s[l: l + self.max]


solution = Solution()
sub = solution.longestPalindrome("babad")
print(sub)

