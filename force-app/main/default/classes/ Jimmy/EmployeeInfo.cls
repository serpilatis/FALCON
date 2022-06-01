public class EmployeeInfo {
    public static string showInfo(integer empNumber) {
        string employeeName = '';
        map<integer, string> employeeMap = new map<integer, string>();

        employeeMap.put(1, 'Jimmy Thakkar');
        employeeMap.put(2, 'James Leo');
       

        if(employeeMap.containsKey(empNumber)){
            employeeName = employeeMap.get(empNumber);
        } else {
            employeeName = 'does not exist';
        }
        return employeeName;

    }   
}
