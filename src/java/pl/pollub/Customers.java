package pl.pollub;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class Customers {
    
    public List<Customer> getCustomers() {
     SessionFactory sf = HibernateUtil.getSessionFactory();
     Session s = sf.openSession();
     List<Customer> customers = (List<Customer>)s.createQuery("from Customer").list();
     s.close();
     return customers;
     }
    
    public List<Customer> getCustomer(long id){
     SessionFactory sf = HibernateUtil.getSessionFactory();
     Session s = sf.openSession();
     Query query = s.createQuery("from Customer where customer_id="+id);
     List<Customer> customer = query.list();
     s.close();
     return customer;
    }
    
    public void insertCustomer(Customer c){
     SessionFactory sf = HibernateUtil.getSessionFactory();
     Session s = sf.openSession();
     Transaction tx = null;
     try{
     tx = s.beginTransaction();
     s.save(c);
     tx.commit();
     } catch (Exception ex) { ex.printStackTrace();
        tx.rollback(); }
    finally { s.close(); }
    }
}
