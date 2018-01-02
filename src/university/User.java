package university;

public class User{
    private String emailid=null;
    private String name=null;
    private String password=null;
    private String number=null;
    private String role=null;
    private String photo;
    private String sign;
    
    private String path;
    
    private String firstname;
	private String lastname;
	private String mobilenumb;
	private String dob;
	private String address;
	private String nationality;
	private String city;
	private String state;
	private String country;
	private String pincode;
	private String gender;
	private String fathername;
	private String tenthper;
	private String puper;
	
	private String coursename;
	private String courseduration;
	private String coursefee;
	private String coursestart;
	private String courseend;
	
	private String title;
	private String description;
	private String date;
	
	private String day;
	private String first;
	private String second;
	private String third;
	private String fourth;
	private String fifth;
	private String sixth;
	
	private String username;
	private String fathername1;
	private String email1;
	private String address1;
	private String pincode1;
	private String state1;
	private String city1;
	private String country1;
	
	private String marks;
	
	private String designation;
	private String topic;
	private String feedback;
	private String room;
	private String max;
	private String percent;
	
	public User(String username,String email1, String fathername1, String address1,String pincode1,String city1, String state1,String country1){
		this.username=username;
		this.email1=email1;
		this.fathername1=fathername1;
		this.address1=address1;
		this.pincode1=pincode1;
		this.city1=city1;
		this.state1=state1;
		this.country1=country1;
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFathername1() {
		return fathername1;
	}

	public void setFathername1(String fathername1) {
		this.fathername1 = fathername1;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getPincode1() {
		return pincode1;
	}

	public void setPincode1(String pincode1) {
		this.pincode1 = pincode1;
	}

	public String getState1() {
		return state1;
	}

	public void setState1(String state1) {
		this.state1 = state1;
	}

	public String getCity1() {
		return city1;
	}

	public void setCity1(String city1) {
		this.city1 = city1;
	}

	public String getCountry1() {
		return country1;
	}

	public void setCountry1(String country1) {
		this.country1 = country1;
	}

	public User(String day,String first,String second,String third,String fourth,String fifth,String sixth)
	{
		
		this.day=day;
		this.first=first;
		this.second=second;
		this.third=third;
		this.fourth=fourth;
		this.fifth=fifth;
		this.sixth=sixth;
	}
	
	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getSecond() {
		return second;
	}

	public void setSecond(String second) {
		this.second = second;
	}

	public String getThird() {
		return third;
	}

	public void setThird(String third) {
		this.third = third;
	}

	public String getFourth() {
		return fourth;
	}

	public void setFourth(String fourth) {
		this.fourth = fourth;
	}

	public String getFifth() {
		return fifth;
	}

	public void setFifth(String fifth) {
		this.fifth = fifth;
	}

	public String getSixth() {
		return sixth;
	}

	public void setSixth(String sixth) {
		this.sixth = sixth;
	}

	public User(String title,String description,String date){
		this.title =title;
		this.description=description;
		this.date=date;
		
	}
    
    public User(){
   	 emailid=null;
   	 name=null;
   	 password=null;
   	 number=null;
   	 role=null;
    }
    
    public User(String name, String duration, String fee, String start, String end){
    	this.coursename=name;
    	this.courseduration=duration;
    	this.coursefee=fee;
    	this.coursestart=start;
    	this.courseend=end;
    }
    
    public User(String firstname,String lastname,String emailid,String mobilenumb,String dob,String address,String nationality,String city,String state,String country,String pincode,String gender,String fathername,String tenthper,String puper,String coursename)
    {
    	this.firstname=firstname;
    	this.lastname=lastname;
    	this.emailid=emailid;
    	this.mobilenumb=mobilenumb;
    	this.dob=dob;
    	this.address=address;
    	this.nationality=nationality;
    	this.city=city;
    	this.state=state;
    	this.country=country;
    	this.pincode=pincode;
    	this.gender=gender;
    	this.fathername=fathername;
    	this.tenthper=tenthper;
    	this.puper=puper;
    	this.coursename=coursename;
    }
    
    public User(String name,String emailid,String password,String number,String photo,String sign){
     this.name=name;
   	 this.emailid=emailid;
   	 this.password=password;
   	 this.number=number;
   	 this.photo=photo;
   	 this.sign=sign;
    }

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}
	
	

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getFirstname() {
		return firstname;
	}



	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}



	public String getLastname() {
		return lastname;
	}



	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getMobilenumb() {
		return mobilenumb;
	}



	public void setMobilenumb(String mobilenumb) {
		this.mobilenumb = mobilenumb;
	}



	public String getDob() {
		return dob;
	}



	public void setDob(String dob) {
		this.dob = dob;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getNationality() {
		return nationality;
	}



	public void setNationality(String nationality) {
		this.nationality = nationality;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public String getPincode() {
		return pincode;
	}



	public void setPincode(String pincode) {
		this.pincode = pincode;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getFathername() {
		return fathername;
	}


	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	public void setSign(String sign) {
		this.sign = sign;
	}
	
	public String getPhoto() {
		return photo;
	}
	
	public String getSign() {
		return sign;
	}
	
	public void setTenthper(String tenthper) {
		this.tenthper = tenthper;
	}
	
	public void setPuper(String puper) {
		this.puper = puper;
	}
	
	public String getTenthper() {
		return tenthper;
	}
	
	public String getPuper() {
		return puper;
	}

	public void setCourseName(String coursename)
	{
		this.coursename=coursename;
	}
	
	public void setCourseDuration(String courseduration)
	{
		this.courseduration=courseduration;
	}
	
	public void setCourseFee(String coursefee)
	{
		this.coursefee=coursefee;
	}
	
	public void setCourseStart(String coursestart)
	{
		this.coursestart=coursestart;
	}
	
	public void setCourseEnd(String courseend)
	{
		this.courseend=courseend;
	}
	
	public String getCoursename() {
		// TODO Auto-generated method stub
		return coursename;
	}

	public String getCourseduration() {
		// TODO Auto-generated method stub
		return courseduration;
	}

	public String getCoursefee() {
		// TODO Auto-generated method stub
		return coursefee;
	}

	public String getStartdate() {
		// TODO Auto-generated method stub
		return coursestart;
	}

	public String getEnddate() {
		// TODO Auto-generated method stub
		return courseend;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getNoticeDate() {
		return date;
	}
	public void setNoticeDate(String date) {
		this.date = date;
	}

	public void setMarks(String marks) {
		// TODO Auto-generated method stub
		this.marks=marks;
	}
	public String getMarks() {
		return marks;
	}
	
	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		// TODO Auto-generated method stub
		this.designation=designation;
	}

	public void setTopic(String topic) {
		// TODO Auto-generated method stub
		this.topic=topic;
	}

	public void setFeedback(String feedback) {
		// TODO Auto-generated method stub
		this.feedback=feedback;
	}
	
	public String getTopic() {
		return topic;
	}
	public String getFeedback() {
		return feedback;
	}
	
	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		// TODO Auto-generated method stub
		this.room=room;
	}
	
	public String getPath() {
		
		return path;
	}

	public void setPath(String path) {
		// TODO Auto-generated method stub
		this.path=path;
	}

public String getMax() {
		
		return max;
	}
	public void setMax(String max) {
		// TODO Auto-generated method stub
		this.max=max;
	}
	
public String getPercent() {
		
		return percent;
	}

	public void setPercent(String percent) {
		// TODO Auto-generated method stub
		this.percent=percent;
	}
}
