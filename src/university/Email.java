package university;

import java.util.Properties; 
import javax.mail.*; 
import javax.mail.internet.*; 

public class Email {   
	public String emailSender(String pw,String rMail,String userName)
	{
		String result=null;
     String to=null;
     to=rMail;//change accordingly 
     
      //Get the session object 
      Properties props = new Properties(); 
      props.put("mail.smtp.host", "smtp.gmail.com"); 
      props.put("mail.smtp.socketFactory.port", "465"); 
      props.put("mail.smtp.socketFactory.class", 
                "javax.net.ssl.SSLSocketFactory"); 
      props.put("mail.smtp.auth", "true"); 
      props.put("mail.smtp.port", "465"); 
      
      Session session = Session.getDefaultInstance(props, 
       new javax.mail.Authenticator() { 
       protected PasswordAuthentication getPasswordAuthentication() { 
       return new PasswordAuthentication("wisdomuniversity.786@gmail.com","wisdomapm");//change accordingly 
       } 
      }); 
      
      //compose message 
      try { 
       MimeMessage message = new MimeMessage(session); 
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(to)); 
       message.setSubject("Login password for Wisdom University "); 
       message.setText("Dear "+userName+", \n Your Password is :"+pw); 
        
       //send message 
       Transport.send(message); 
     
       result="message sent successfully"; 
      
      } catch (MessagingException e) {throw new RuntimeException(e);
      
      } 
	return result;
}
}

