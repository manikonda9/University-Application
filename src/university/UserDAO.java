package university;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

	public class UserDAO {
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		 String username="system";
		 String Password="admin";
		 public String addTime(String name,String intime,String outtime,long diff)
			{
				
				Connection con = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;				
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection(url, username, Password);
					pstmt = con.prepareStatement("insert into timetable values(?,?,?,?)");
					pstmt.setString(1,name);
					pstmt.setString(2,intime);
					pstmt.setString(3,outtime);
					pstmt.setLong(4,diff);
					
					rs=pstmt.executeQuery();
					if(rs.next())
					{
				      return("timings are recorded successfully");
			
					}
					else
					{
						return ("not recorded");
					}
				}
				catch(Exception e)
				{
					
				}
				finally{
					try{
						con.close();
					}catch(Exception e2)
					{
						
					}
				}
				return null;
			}
	
		 public ArrayList<User> getStudentInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> student=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from student");
				 student=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));
					    user.setCourseName(rs.getString(16));
					    student.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return student; 
		 }
		 
		 public ArrayList<User> getFacultyInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 
			 ResultSet rs=null;
			 ArrayList<User> faculty=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 
				 rs=st.executeQuery("select * from faculty");
				 faculty=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setDesignation(rs.getString(14));
					    user.setCourseName(rs.getString(15));
					    faculty.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return faculty; 
		 }
		 
		 public ArrayList<User> getFacultyInfo(String course)
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 PreparedStatement pstmt=null;
			 ArrayList<User> faculty=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 pstmt=con.prepareStatement("select * from faculty where course=?");
				 //pstmt=con.prepareStatement("select * from registration where email_id=?");
				  
				   pstmt.setString(1,course);
				  rs=pstmt.executeQuery();
				 
				// rs=st.executeQuery("select * from faculty where course=?");
				 faculty=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setDesignation(rs.getString(14));
					    user.setCourseName(rs.getString(15));
					    faculty.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return faculty; 
		 }
		 
		 public ArrayList<User> getexamInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 ArrayList<User> result=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from examinations where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  result=new ArrayList<User>();
				  
				 while(rs.next())
				 {
					user=new User();
					user.setEmailid(rs.getString(1));
					user.setMarks(rs.getString(2));
					user.setMax(rs.getString(3));
					user.setPercent(rs.getString(4));
					//user.setNumber(rs.getString(3));
					//user.setRole(rs.getString(4));
					//user.setName(rs.getString(5));
					result.add(user);

				 }
				
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return result; 
		 }
		 
		 public ArrayList<User> getExamInfo(String course)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 ArrayList<User> result=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from examinations where course='"+course+"' order by score desc");
				  
				  
				  rs=pstmt.executeQuery();
				  result=new ArrayList<User>();
				  
				 while(rs.next())
				 {
					user=new User();
					user.setEmailid(rs.getString(1));
					user.setMarks(rs.getString(2));
					user.setMax(rs.getString(3));
					user.setPercent(rs.getString(4));
					user.setCourseName(rs.getString(5));
					//user.setNumber(rs.getString(3));
					//user.setRole(rs.getString(4));
					//user.setName(rs.getString(5));
					result.add(user);

				 }
				
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return result; 
		 }


		 
		 public ArrayList<User> getHostelInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> student=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from hostel");
				 student=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setUsername(rs.getString(1));
					    user.setEmail1(rs.getString(2));
					    user.setFathername1(rs.getString(3));
					    user.setAddress1(rs.getString(4));
					    user.setPincode1(rs.getString(5));
					    user.setCity1(rs.getString(6));
					    user.setState1(rs.getString(7));
					    user.setCountry1(rs.getString(8));
					    
					    student.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return student; 
		 }
		 
		 public ArrayList<User> getApprovedHostelInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> student=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from hostelapproved");
				 student=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setUsername(rs.getString(1));
					    user.setEmail1(rs.getString(2));
					    user.setFathername1(rs.getString(3));
					    user.setAddress1(rs.getString(4));
					    user.setPincode1(rs.getString(5));
					    user.setCity1(rs.getString(6));
					    user.setState1(rs.getString(7));
					    user.setCountry1(rs.getString(8));
					    user.setRoom(rs.getString(9));
					    student.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return student; 
		 }
		 
		 public ArrayList<User> getCourseInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> course=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from coursedetails");
				 course=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setCourseName(rs.getString(1));
					    user.setCourseDuration(rs.getString(2));
					    user.setCourseFee(rs.getString(3));
					    user.setCourseStart(rs.getString(4));
					    user.setCourseEnd(rs.getString(5));
					    
					    course.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return course;
		 }
		 
		 public ArrayList<User> getFeedback()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> feedback=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from feedback");
				 feedback=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setEmailid(rs.getString(2));
					    user.setMobilenumb(rs.getString(3));
					    user.setTopic(rs.getString(4));
					    user.setFeedback(rs.getString(5));
					    
					    feedback.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return feedback;
		 }
		 
		 public ArrayList<User> getContacts()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> contacts=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from contactus");
				 contacts=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setEmailid(rs.getString(2));
					    user.setMobilenumb(rs.getString(3));
					    user.setTopic(rs.getString(4));
					   
					    
					    contacts.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return contacts;
		 }
		 
		 public ArrayList<User> getTimeTableInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> timetable=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from timetables");
				 timetable=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setCourseName(rs.getString(1));
					    user.setDay(rs.getString(2));
					    user.setFirst(rs.getString(3));
					    user.setSecond(rs.getString(4));
					    user.setThird(rs.getString(5));
					    user.setFourth(rs.getString(6));
					    user.setFifth(rs.getString(7));
					    user.setSixth(rs.getString(8));
					    
					    timetable.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return timetable;
		 }
		 
		 public ArrayList<User> getTimeTableInfo(String course)
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 PreparedStatement pstmt=null;
			 ArrayList<User> timetable=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 pstmt=con.prepareStatement("select * from timetables where course=?");
				 //pstmt=con.prepareStatement("select * from registration where email_id=?");
				  
				   pstmt.setString(1,course);
				  rs=pstmt.executeQuery();
				 timetable=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					 user.setCourseName(rs.getString(1));
					    user.setDay(rs.getString(2));
					    user.setFirst(rs.getString(3));
					    user.setSecond(rs.getString(4));
					    user.setThird(rs.getString(5));
					    user.setFourth(rs.getString(6));
					    user.setFifth(rs.getString(7));
					    user.setSixth(rs.getString(8));
					   
					    timetable.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return timetable;
		 }
		 
		 public ArrayList<User> getApprovedStudentsInfo(String Course)
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> student=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from approved where course='"+Course+"'");
				 student=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));
					    user.setCourseName(rs.getString(17));
					    student.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return student; 
		 }
		 
		 public ArrayList<User> getRejectedStudentsInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> student=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from rejected");
				 student=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));
					    user.setCourseName(rs.getString(16));
					    student.add(user);
						
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return student; 
		 }
		 
		 public ArrayList<User> getNoticeInfo()
		 {
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 ArrayList<User> notice=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				 
				 st=con.createStatement();
				 rs=st.executeQuery("select * from noticeboard");
				 notice=new ArrayList<User>();
				 
				 while(rs.next())
				 {
					 User user=new User();
					    user.setTitle(rs.getString(1));
					    user.setDescription(rs.getString(2));
					    user.setNoticeDate(rs.getString(3));
					    
					    notice.add(user);
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return notice; 
		 }
		 
		 public User getUserInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from registration where email_id=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					 
					user.setEmailid(rs.getString(1));
					user.setPassword(rs.getString(2));
					user.setNumber(rs.getString(3));
					user.setRole(rs.getString(4));
					user.setName(rs.getString(5));
					user.setPath(rs.getString(6));

				 }
				
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }

		 public User getInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from student where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					 user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));				 
				        user.setCourseName(rs.getString(16));}
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }
		 
		 public User getHostelInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from hostel where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					    user.setUsername(rs.getString(1));
					    user.setEmail1(rs.getString(2));
					    user.setFathername1(rs.getString(3));
					    user.setAddress1(rs.getString(4));
					    user.setPincode1(rs.getString(5));
					    user.setCity1(rs.getString(6));
					    user.setState1(rs.getString(7));
					    user.setCountry1(rs.getString(8));
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }
		 
		 public User getMyHostel(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from hostelapproved where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					    user.setUsername(rs.getString(1));
					    user.setEmail1(rs.getString(2));
					    user.setFathername1(rs.getString(3));
					    user.setAddress1(rs.getString(4));
					    user.setPincode1(rs.getString(5));
					    user.setCity1(rs.getString(6));
					    user.setState1(rs.getString(7));
					    user.setCountry1(rs.getString(8));
					    user.setRoom(rs.getString(9));
				 }
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }
		 
		 public User getApprovedInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from approved where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					 user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));				 
				 user.setCourseName(rs.getString(17));
			 }
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }


		 public User getRejectedInfo(String email)
		 {
			 
			 User user=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from rejected where emailid=?");
				  
				   pstmt.setString(1,email);
				  rs=pstmt.executeQuery();
				  user=new User();
				 while(rs.next())
				 {
					 user.setFirstname(rs.getString(1));
					    user.setLastname(rs.getString(2));
					    user.setEmailid(rs.getString(3));
					    user.setMobilenumb(rs.getString(4));
					    user.setDob(rs.getString(5));
					    user.setAddress(rs.getString(6));
					    user.setNationality(rs.getString(7));
					    user.setCity(rs.getString(8));
					    user.setState(rs.getString(9));
					    user.setCountry(rs.getString(10));
					    user.setPincode(rs.getString(11));
					    user.setGender(rs.getString(12));
					    user.setFathername(rs.getString(13));
					    user.setTenthper(rs.getString(14));
					    user.setPuper(rs.getString(15));
					    user.setCourseName(rs.getString(16));	    
				 }
				
				 
			 }catch(Exception e)
			 {
				e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			
			 return user; 
		 }

		 
		 public boolean isUserExists(String email,String pasword)
		 {
		    boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from registration where email_id=? and password=?");
				  
				   pstmt.setString(1,email);
				   pstmt.setString(2,pasword);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInAdmissions(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from approved where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInRejected(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from rejectedlist where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInStudents(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from student where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInHostel(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from hostel where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInRejectedHostel(String email)
		 {
		     boolean isUserExists=true;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from rejecthostel where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInApprovedHostel(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from hostelapproved where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public boolean isUserExistsInExams(String email)
		 {
		     boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
		
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from examinations where emailid=?");
				  
				   pstmt.setString(1,email);
				   
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public String register(User user)
		 {
			 String RegisterStatus=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into registration values(?,?,?,?,?,?)");
				 
				  pstmt.setString(1,user.getEmailid());
				  pstmt.setString(2,user.getPassword());
				  pstmt.setString(3,user.getNumber());
				  pstmt.setString(4,"student");
				  pstmt.setString(5,user.getName());
				  pstmt.setString(6,"person.png");
				 // pstmt.setString(6,user.getPhoto());
				 // pstmt.setString(7,user.getSign());
				  int val= pstmt.executeUpdate();
				 if(val<1)
				 {
				     RegisterStatus="registration failed";
				 }
				 else
					 RegisterStatus="successfully registerd";
				 
				 
			 }catch(Exception e)
			 {
				RegisterStatus= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return RegisterStatus;
		 }
		 public boolean isUserExistsPw(User user)
		 {
		    boolean isUserExists=false;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 boolean status=false;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("select * from registration where email_id=?");
				  
				   pstmt.setString(1,user.getEmailid());
				 
				
				  rs=pstmt.executeQuery();
				 
				 if(rs.next())
				 {
					 isUserExists=true;
				 }
				 else
					 isUserExists=false;
				 
			 }catch(Exception e)
			 {
				e.printStackTrace();
			 }
			 finally{
				 try{
					  if(!rs.isClosed())
						   rs.close();
					   if(!pstmt.isClosed())
						   pstmt.close();
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e2)
				 {
					 e2.printStackTrace();
				 }
			 }
			 return isUserExists;
		 }
		 
		 public int application(User user)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					pstmt.setString(1, user.getFirstname());
					pstmt.setString(2, user.getLastname());
					pstmt.setString(3, user.getEmailid());
					pstmt.setString(4, user.getMobilenumb());
					pstmt.setString(5, user.getDob());
					pstmt.setString(6, user.getAddress());
					pstmt.setString(7, user.getNationality());
					pstmt.setString(8, user.getCity());
					pstmt.setString(9, user.getState());
					pstmt.setString(10, user.getCountry());
					pstmt.setString(11, user.getPincode());
					pstmt.setString(12, user.getGender());
					pstmt.setString(13, user.getFathername());
					pstmt.setString(14, user.getTenthper());
					pstmt.setString(15, user.getPuper());
					pstmt.setString(16, user.getCoursename());
					 status=pstmt.executeUpdate();
				
					//System.out.println(status);
					if(status>0){
						registerStatus=" Registered  successfully";
					}
					else{ 
						registerStatus="Failed To Register";
					}
				}catch(Exception ex)
				{
					registerStatus=ex.getMessage();
					System.out.println(registerStatus);
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return status;
				
				}//end of application method
         
		 public int approve(User user)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into approved values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,CONCAT('WU201',sq_student.nextVal),?)");
					pstmt.setString(1, user.getFirstname());
					pstmt.setString(2, user.getLastname());
					pstmt.setString(3, user.getEmailid());
					pstmt.setString(4, user.getMobilenumb());
					pstmt.setString(5, user.getDob());
					pstmt.setString(6, user.getAddress());
					pstmt.setString(7, user.getNationality());
					pstmt.setString(8, user.getCity());
					pstmt.setString(9, user.getState());
					pstmt.setString(10, user.getCountry());
					pstmt.setString(11, user.getPincode());
					pstmt.setString(12, user.getGender());
					pstmt.setString(13, user.getFathername());
					pstmt.setString(14, user.getTenthper());
					pstmt.setString(15, user.getPuper());
					pstmt.setString(16, user.getCoursename());
					 status=pstmt.executeUpdate();
				
					//System.out.println(status);
					if(status>0){
						registerStatus=" Registered  successfully";
					}
					else{ 
						registerStatus="Failed To Register";
					}
				}catch(Exception ex)
				{
					registerStatus=ex.getMessage();
					System.out.println(registerStatus);
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return status;
				
				}//end of application method

		 public int reject(User user)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into rejected values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					pstmt.setString(1, user.getFirstname());
					pstmt.setString(2, user.getLastname());
					pstmt.setString(3, user.getEmailid());
					pstmt.setString(4, user.getMobilenumb());
					pstmt.setString(5, user.getDob());
					pstmt.setString(6, user.getAddress());
					pstmt.setString(7, user.getNationality());
					pstmt.setString(8, user.getCity());
					pstmt.setString(9, user.getState());
					pstmt.setString(10, user.getCountry());
					pstmt.setString(11, user.getPincode());
					pstmt.setString(12, user.getGender());
					pstmt.setString(13, user.getFathername());
					pstmt.setString(14, user.getTenthper());
					pstmt.setString(15, user.getPuper());
					pstmt.setString(16, user.getCoursename());
					 status=pstmt.executeUpdate();
				
					//System.out.println(status);
					if(status>0){
						registerStatus=" Registered  successfully";
					}
					else{ 
						registerStatus="Failed To Register";
					}
				}catch(Exception ex)
				{
					registerStatus=ex.getMessage();
					System.out.println(registerStatus);
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return status;
				
				}//end of application method
		 
		 public int rejectFinal(User user)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into rejectedlist values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					pstmt.setString(1, user.getFirstname());
					pstmt.setString(2, user.getLastname());
					pstmt.setString(3, user.getEmailid());
					pstmt.setString(4, user.getMobilenumb());
					pstmt.setString(5, user.getDob());
					pstmt.setString(6, user.getAddress());
					pstmt.setString(7, user.getNationality());
					pstmt.setString(8, user.getCity());
					pstmt.setString(9, user.getState());
					pstmt.setString(10, user.getCountry());
					pstmt.setString(11, user.getPincode());
					pstmt.setString(12, user.getGender());
					pstmt.setString(13, user.getFathername());
					pstmt.setString(14, user.getTenthper());
					pstmt.setString(15, user.getPuper());
					pstmt.setString(16, user.getCoursename());
					 status=pstmt.executeUpdate();
				
					//System.out.println(status);
					if(status>0){
						registerStatus=" Registered  successfully";
					}
					else{ 
						registerStatus="Failed To Register";
					}
				}catch(Exception ex)
				{
					registerStatus=ex.getMessage();
					System.out.println(registerStatus);
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return status;
				
				}//end of application method
		 
		 public String Delete(String email) {
				// TODO Auto-generated method stub
				Connection con =null;
				PreparedStatement ps = null;
				
				String status=null;
				
				try{
					con = DriverManager.getConnection(url, username, Password);
				
					ps = con.prepareStatement("Delete from student where emailid=?");
					
					ps.setString(1,email);
					int records = ps.executeUpdate();
					
					if(records>0){
						status= "Record deleted succesfully";
					}
					else{
						status= "No record deleted";
					}
					
				}catch(Exception ex){
					System.out.println(ex.getMessage());
				}finally{
					try{
						if(!con.isClosed())
							con.close();
					}catch(Exception ex){
						
					}
				}
				
				return status;
			}
		 
		 public String DeleteHostel(String email) {
				// TODO Auto-generated method stub
				Connection con =null;
				PreparedStatement ps = null;
				
				String status=null;
				
				try{
					con = DriverManager.getConnection(url, username, Password);
				
					ps = con.prepareStatement("Delete from hostel where emailid=?");
					
					ps.setString(1,email);
					int records = ps.executeUpdate();
					
					if(records>0){
						status= "Record deleted succesfully";
					}
					else{
						status= "No record deleted";
					}
					
				}catch(Exception ex){
					System.out.println(ex.getMessage());
				}finally{
					try{
						if(!con.isClosed())
							con.close();
					}catch(Exception ex){
						
					}
				}
				
				return status;
			}


		 public String Deleterejected(String email) {
				// TODO Auto-generated method stub
				Connection con =null;
				PreparedStatement ps = null;
				
				String status=null;
				
				try{
					con = DriverManager.getConnection(url, username, Password);
				
					ps = con.prepareStatement("Delete from rejected where emailid=?");
					
					ps.setString(1,email);
					int records = ps.executeUpdate();
					
					if(records>0){
						status= "Record deleted succesfully";
					}
					else{
						status= "No record deleted";
					}
					
				}catch(Exception ex){
					System.out.println(ex.getMessage());
				}finally{
					try{
						if(!con.isClosed())
							con.close();
					}catch(Exception ex){
						
					}
				}
				
				return status;
			}
		 public String coursedetails(User user)
		 {
			 String Status=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into coursedetails values(?,?,?,?,?)");
				 
				  pstmt.setString(1,user.getCoursename());
				  pstmt.setString(2,user.getCourseduration());
				  pstmt.setString(3,user.getCoursefee());
				  pstmt.setString(4,user.getStartdate());
				  pstmt.setString(5,user.getEnddate());
				  
				  int val= pstmt.executeUpdate();
				 if(val>0)
				 {
				     Status="inserted";
				 }
				 else
					 Status="not inserted";
				 
				 
			 }catch(Exception e)
			 {
				Status= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return Status;
		 }
		 
		 public String update(User user)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into noticeboard values(?,?,?)");
					pstmt.setString(1, user.getTitle());
					pstmt.setString(2, user.getDescription());
					pstmt.setString(3, user.getNoticeDate());
					
					
					 status=pstmt.executeUpdate();
				
					 //System.out.println(status);
					if(status>0){
						registerStatus="inserted";
					  
					  
					}
					else{
						
						registerStatus="Failed To Update";
					
					
					}
				}catch(Exception ex){
					
					registerStatus=ex.getMessage();
					return registerStatus;
					//if(ex.toString().contains("REGISTRATION_PK1"));
					//registerStatus="email id already exists";
					/*//System.out.println("error in registration");
					registerStatus=ex.getMessage();
					return registerStatus;*/
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return registerStatus;
				
				}//end of register method
		 
		 public String updatePassword(String email,String passcode)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("update registration set password=? where email_id=?");
					
					pstmt.setString(1, passcode);
					pstmt.setString(2, email);
					
					
					 status=pstmt.executeUpdate();
				
					 //System.out.println(status);
					if(status>0){
						registerStatus="inserted";		  
					}
					else{
						
						registerStatus="Failed To Update";
					
					
					}
				}catch(Exception ex){
					
					registerStatus=ex.getMessage();
					return registerStatus;
					//if(ex.toString().contains("REGISTRATION_PK1"));
					//registerStatus="email id already exists";
					/*//System.out.println("error in registration");
					registerStatus=ex.getMessage();
					return registerStatus;*/
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return registerStatus;
				
				}//end of register method
		 
		 public String insertComments(String name,String email,String numb,String comment)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into contactus values(?,?,?,?)");
					pstmt.setString(1, name);
					pstmt.setString(2, email);
					pstmt.setString(3, numb);
					pstmt.setString(4, comment);
					
					
					 status=pstmt.executeUpdate();
				
					 //System.out.println(status);
					if(status>0){
						registerStatus="inserted";		  
					}
					else{
						
						registerStatus="Failed To Update";
					
					
					}
				}catch(Exception ex){
					
					registerStatus=ex.getMessage();
					return registerStatus;
					//if(ex.toString().contains("REGISTRATION_PK1"));
					//registerStatus="email id already exists";
					/*//System.out.println("error in registration");
					registerStatus=ex.getMessage();
					return registerStatus;*/
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return registerStatus;
				
				}//end of register method
		 
		 public String feedback(String name,String email,String numb,String topic,String feedback)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into feedback values(?,?,?,?,?)");
					pstmt.setString(1, name);
					pstmt.setString(2, email);
					pstmt.setString(3, numb);
					pstmt.setString(4, topic);
					pstmt.setString(5, feedback);
					
					
					 status=pstmt.executeUpdate();
				
					 //System.out.println(status);
					if(status>0){
						registerStatus="inserted";		  
					}
					else{
						
						registerStatus="Failed To Update";
					
					
					}
				}catch(Exception ex){
					
					registerStatus=ex.getMessage();
					return registerStatus;
					//if(ex.toString().contains("REGISTRATION_PK1"));
					//registerStatus="email id already exists";
					/*//System.out.println("error in registration");
					registerStatus=ex.getMessage();
					return registerStatus;*/
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return registerStatus;
				
				}//end of register method
		 
		 public String examination(String mailid,String score,String max,String percent,String course)
		 {
			 String Status=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into examinations values(?,?,?,?,?)");
				 
				  pstmt.setString(1,mailid);
				  pstmt.setString(2,score);
				  pstmt.setString(3,max);
				  pstmt.setString(4,percent);
				  pstmt.setString(5,course);
				  /*pstmt.setString(1,user.getCoursename());
				  pstmt.setString(2,user.getCourseduration());
				  pstmt.setString(3,user.getCoursefee());
				  pstmt.setString(4,user.getStartdate());
				  pstmt.setString(5, user.getEnddate());
				  */
				  int val= pstmt.executeUpdate();
				 if(val>0)
				 {
				     Status="inserted";
				 }
				 else
					 Status="not inserted";
				 
				 
			 }catch(Exception e)
			 {
				Status= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return Status;
		 }
		 
		 public int AddTimetable(String course,String day,String first,String second,String third,String fourth,String fifth,String sixth)
			{
				
				String registerStatus=null;
				Connection con=null;
				PreparedStatement pstmt=null;
				int status=0;
				
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
			
					con=DriverManager.getConnection(url,username,Password);
					pstmt=con.prepareStatement("insert into timetables values(?,?,?,?,?,?,?,?)");
					pstmt.setString(1, course);
					pstmt.setString(2, day);
					pstmt.setString(3, first);
					pstmt.setString(4, second);
					pstmt.setString(5, third);
					pstmt.setString(6, fourth);
					pstmt.setString(7, fifth);
					pstmt.setString(8, sixth);
					
					 status=pstmt.executeUpdate();
				
					//System.out.println(status);
					if(status>0){
						registerStatus=" Registered  successfully";
					}
					else{ 
						registerStatus="Failed To Register";
					}
				}catch(Exception ex)
				{
					registerStatus=ex.getMessage();
					System.out.println(registerStatus);
				}finally{
					try{
						con.close();
					}catch(Exception ex){}
				}
				
				return status;
				
				}//end of application method
		 
		 public String forHostel(User user)
		 {
			 String Status=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into hostel values(?,?,?,?,?,?,?,?)");
				 
				  pstmt.setString(1,user.getUsername());
				  pstmt.setString(2,user.getFathername1());
				  pstmt.setString(3,user.getEmail1());
				  pstmt.setString(4,user.getAddress1());
				  pstmt.setString(5, user.getPincode1());
				  pstmt.setString(6, user.getCity1());
				  pstmt.setString(7, user.getState1());
				  pstmt.setString(8, user.getCountry1());
				  
				  int val= pstmt.executeUpdate();
				 if(val>0)
				 {
				     Status="inserted";
				 }
				 else
					 Status="not inserted";
				 
				 
			 }catch(Exception e)
			 {
				Status= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return Status;
		 }

		 public String rejectHostel(User user)
		 {
			 String Status=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into rejecthostel values(?,?,?,?,?,?,?,?)");
				 
				  pstmt.setString(1,user.getUsername());
				  pstmt.setString(2,user.getFathername1());
				  pstmt.setString(3,user.getEmail1());
				  pstmt.setString(4,user.getAddress1());
				  pstmt.setString(5, user.getPincode1());
				  pstmt.setString(6, user.getCity1());
				  pstmt.setString(7, user.getState1());
				  pstmt.setString(8, user.getCountry1());
				  
				  int val= pstmt.executeUpdate();
				 if(val>0)
				 {
				     Status="inserted";
				 }
				 else
					 Status="not inserted";
				 
				 
			 }catch(Exception e)
			 {
				Status= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return Status;
		 }

		 
		 public int approveHostel(User user)
		 {
			 int val=0;
			 String Status=null;
			 Connection con=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 try{
				 Class.forName("oracle.jdbc.driver.OracleDriver");
				 con=DriverManager.getConnection(url,username,Password);
				  pstmt=con.prepareStatement("insert into hostelapproved values(?,?,?,?,?,?,?,?,CONCAT('WUHS',sq_room.nextVal))");
				 
				  pstmt.setString(1,user.getUsername());
				  pstmt.setString(2,user.getEmail1());
				  pstmt.setString(3,user.getFathername1());
				  pstmt.setString(4,user.getAddress1());
				  pstmt.setString(5, user.getPincode1());
				  pstmt.setString(6, user.getCity1());
				  pstmt.setString(7, user.getState1());
				  pstmt.setString(8, user.getCountry1());
				  
				  val= pstmt.executeUpdate();
				 if(val>0)
				 {
				     Status="inserted";
				 }
				 else
					 Status="not inserted";
				 
				 
			 }catch(Exception e)
			 {
				Status= e.getMessage();
			 }
			 finally{
				 try{
					 if(!con.isClosed())
					 {
						 con.close();
					 }
				 }
				 catch(Exception e)
				 {
					 
				 }
			 }
			 return val;
		 }

}