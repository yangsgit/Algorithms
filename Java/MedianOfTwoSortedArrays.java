class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int half = ( nums1.length + nums2.length ) / 2;
        if ((nums1.length + nums2.length) % 2 == 0) {
          int bigger = kth(nums1, 0, nums2, 0, half + 1);
          int smaller = kth(nums1, 0, nums2, 0, half);
          return (bigger + smaller) / 2.0;
        }else {
          return kth(nums1, 0, nums2, 0, half + 1);
        }
    }
    
    private int kth(int[] a, int aleft, int[] b, int bleft, int k) {
        // 1. base case 
        if (aleft >= a.length) {
          return b[bleft + k - 1];
        }
        if (bleft >= b.length) {
          return a[aleft + k - 1];
        }
        if (k == 1) {
          return Math.min(a[aleft], b[bleft]);
        }
        
        // 2. get mid 包含进来 k/2 个数， 就是 index + k/ 2 - 1;
        int amid = aleft + k / 2 - 1;
        int bmid = bleft + k / 2 - 1;
        
        // 3. get mid value
        int aval = amid >= a.length ? Integer.MAX_VALUE : a[amid];
        int bval = bmid >= b.length ? Integer.MAX_VALUE : b[bmid];
        
        // 4. search part
        // amid + 1 , bmid + 1  都是新起点
        if (aval < bval) {
          return kth(a, amid + 1, b, bleft, k - k / 2);
        } else {
          return kth(a, aleft, b, bmid + 1, k - k / 2);
        }
    }
}
