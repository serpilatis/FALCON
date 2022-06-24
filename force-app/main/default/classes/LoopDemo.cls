public  class LoopDemo {
   public void print_int_while(){
       integer count = 1;
       while(count <=25) {
           system.debug(count);
           count++;
       }
   }
   public void print_N_numbers(integer n){
       for (Integer i = 1; i < n; i++) {
           system.debug(i);
       }
   }
   public void print_N_numbers_2(integer n){
       string s = '';
       for(Integer i = 0; i < n; i++){
           s += string.valueOf(i) + ',';
           string tempS = string.valueOf(i) + ',';
           system.debug('tempS = ' + tempS);
           system.debug('inside for loop, s = ' + s);
       }
       //s = '1,2,3,4,5,';
       system.debug('print 1 to N: ' + s);
   }
   public integer print_sum_N_numbers(integer n){
       integer sum = 0;
       for (Integer i = 0; i <= n; i++){
           sum += i;
       }
       system.debug('summation is ' + sum);
       return sum;
   }
   public void print_N_Odd_numbers(integer startInt, integer endInt){
       for (Integer i = startInt; i <= endInt; i++) {
           integer modI = math.mod(i, 2);
           if(modI == 1) system.debug(i);           
       }
   }

   
}