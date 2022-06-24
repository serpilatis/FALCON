public  class IterationExercise2 {
    public void getPerfectAverage(integer num1, integer num2){
        integer sum = 0;
        integer counter = 0;
        string n = '';
        decimal average;
        System.debug('Input: num1 = ' +num1);
        System.debug('Input: num2 = ' +num2);
        for (Integer i = num1; i <= num2; i++){
            sum = sum + i;
            counter++;
        }
        average = sum / counter;
        System.debug(' Output: ' + average);
        System.debug(' Calculation: ');
        for (Integer i = num1; i <= num2; i++){
            n = n + string.valueOf(i) + ' + ';
        }
        n = n + ' = ' + string.valueOf(sum);
        System.debug(n);
        System.debug('Total ' + counter + ' numbers between ' + num1 + ' to ' +num2);
        System.debug(sum + ' / ' + counter + ' = ' + average);
    }
}