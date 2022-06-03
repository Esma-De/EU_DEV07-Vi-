/*
    Class Name: MyCarDev007
    Description: What this class does ?
    Date         Developer       Remarks
    -------------------------------------------------------------
    6thApr          Vikram          Intial Class
    8thApr          Vikram          Updates lightningSystem and engine methods
    Note: Try maintain last 10 logs
*/
public with sharing class MyCarDev007 {
    //Class level Variables
    String soundSytem;
    String sunroof;
    String color;
    String carHeight;
    String carWeight;
    public void soundSytem(){
         String rightcornerspeaker;
    }
    
    
   //Method Name:switchOn
   //Method Description:  Turning on my car function
    public void switchOn(){ //method
        String ignitButton;// variables - charactertics
        System.debug('### This is my swithon method:::::');
    }
    public void switchOff(){
        String stpBtn; // String Datatype - Text 
        System.debug('$$$ This is my swithoff method----');
    }
    public void breakingSystem(){
        String brkPads;
        String brkOil;
        String stopLight;
        System.debug('@@@@ This is my Breaking System method----');
    }
    public void gearSystem(){
        Integer gears;  // number datatype - 5-6
        System.debug('### This is my gear system method:::::');
    }
    //Method Name:switchOn
   //Method Description:  Enging specifcation
    public void engine(){
        String rpm;
        String cc;
        String hp;      
        String troque; 
        String oiltemp; 
        System.debug('### This is my engin method:::::');
    }
    public void airCondition(){
        String noOfVents;
        String maxTemp;
        String mintemp;
        String fanSpeed;
        System.debug('### This is my AC method:::::');
    }
    public void lightningSystem(){
        String frontLights;
        String sideSignals;
        String insideDecors;
        String parkingLights;
        String breaklights;
        System.debug('### This is my Light System method:::::');
    }
    
}