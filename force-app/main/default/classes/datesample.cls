public class datesample {
    public Integer dat {get;set;}
    public Data1__c data{get;set;}
   
    
    public void save(){
        Data1__c d= new Data1__c();
        System.debug('dat----'+dat); 
        Date startdate= date.today().addDays(-dat);
        system.debug('startdate-----'+startdate);
        System.debug('date.today()'+date.today());
        Integer listdata= [select count()  from Data1__c where  Datealueofcreateddate__c>=: date.today() and  Datealueofcreateddate__c<:startdate ];
        
        System.debug('listdata------'+listdata);
        IF(listdata==0){
            
        insert d;
            System.debug('d----'+d);
        }
    }

}