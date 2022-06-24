public  class Employees {
  public static void employeesName(){
      List<String> employeesList = new List<String>{' Jack ' , 'Paul' , 'Emily' , 'Mona' , 'Sera' };

      employeesList.sort();
      system.debug(' Employees Name: ' + employeesList);

  }
}