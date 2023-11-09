public with sharing class StaticNonStaticDemo {
    public List<Student> prepareStudents() {
        List<Student> students = new List<Student>();
        
        // Prepare student record 1
        Student std1 = new Student();
        std1.firstname = 'Veronica';
        std1.lastname = 'Pignataro';
        std1.age = 20;
        std1.stdClass = 15;
        std1.address = 'Houston, Texas';
        students.add(std1);

        // Prepare student record 2
        Student std2 = new Student();
        std2.firstname = 'Niko';
        std2.lastname = 'Cankos';
        std2.age = 22;
        std2.stdClass = 12;
        std2.address = 'Baton Rouge, Louisiana';
        students.add(std2);
        
        System.debug(students);
        return students;        
    }
    
   /* public static void printStudent(Student std) {
        System.debug('Student first name: ' + std.firstname + ' ' + std.lastname);
    }*/
    public static void myMethod(){
        Student std = new Student ();
        std.firstname = 'Niko';
        std.lastname = 'Cankos';
        std.age = 22;
        std.stdClass = 12;
        std.address = 'Baton Rouge, Louisiana';
        //non static you need instance first 
        System.debug(std.getstudentName());
        //static directly
        system.debug(Student.getSchool());

    }
}
