import 'dart:math';

// SOLUTION LINK : https://leetcode.com/problems/count-subarrays-where-max-element-appears-at-least-k-times/solutions/6697524/beats-space-o1-super-easy-beginners-java-49e2/
class Solution {
  int countSubarrays(List<int> nums, int k) {
    int maxElement = 0;
    for (int n in nums) {
      maxElement = max(maxElement, n);
    }
    int count = 0;
    int l = 0;
    int n = nums.length;
    int maxFound = 0;
    for (int r = 0; r < n; r++) {
      if (nums[r] == maxElement) maxFound++;

      while (maxFound == k) {
        count += n - r;
        if (nums[l] == maxElement) maxFound--;
        l++;
      }
    }

    return count;
  }
}
