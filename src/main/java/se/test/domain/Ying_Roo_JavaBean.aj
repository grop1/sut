// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package se.test.domain;

import java.util.Date;
import se.test.domain.Ying;

privileged aspect Ying_Roo_JavaBean {
    
    public String Ying.getName() {
        return this.name;
    }
    
    public void Ying.setName(String name) {
        this.name = name;
    }
    
    public Date Ying.getDuedate() {
        return this.duedate;
    }
    
    public void Ying.setDuedate(Date duedate) {
        this.duedate = duedate;
    }
    
    public int Ying.getAge() {
        return this.age;
    }
    
    public void Ying.setAge(int age) {
        this.age = age;
    }
    
}
