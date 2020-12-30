class Solution {
    int start = 0; 
    int maxLen = 0;
    public String longestPalindrome(String s) {
        if (s.length() < 2) {
            return s;
        }
        for (int i = 0; i < s.length() - 1; i++) {
            countLengthPalindrom(s, i, i);
            countLengthPalindrom(s, i, i + 1);
        }
        return s.substring(start, start + maxLen);
    }   
    
    private void countLengthPalindrom(String s, int left, int right) {
        while (left >= 0 && right < s.length()){
            if (s.charAt(left) == s.charAt(right)) {
                if (right - left + 1 > maxLen) {
                    start = left;
                    maxLen = right - left + 1;
                }
                left--;
                right++;
            }else {
                return;
            }
        }
    }
}
