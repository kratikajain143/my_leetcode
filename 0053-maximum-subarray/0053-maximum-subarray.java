class Solution {
    public int maxSubArray(int[] nums) {
        int current_sum=nums[0];
        int max=nums[0];
        

        for(int i=1;i<nums.length;i++){
            if(current_sum>0){
                current_sum+=nums[i];
                max=Math.max(current_sum,max);

            }
            else{
                current_sum=nums[i];
                max=Math.max(current_sum,max);
                
            }
        }
        return max;
    }
}