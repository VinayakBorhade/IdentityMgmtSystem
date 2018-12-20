pragma solidity ^0.4.19;
contract Student {

	struct studentProfile{
		string name;
		uint age;
		string dob;
		string email;
		string phone;
		address institute;
		uint marks;

		/* verification info */
		bool isVerified;
	}

	/*student address to their profile*/
	/*mapping(address => studentProfile) public students;*/
	mapping(uint => studentProfile) public students;

	uint public studentsCount;

	constructor() public {
		studentsCount=0;
		addStudent("vinayak",12,"1-1-2000","abc@xyz.com","1234567890",0x0,100,false);
	}

	function addStudent(string _name, uint _age, string _dob, string _email, string _phone,
			 address _institute, uint _marks, bool _isVerified) public {
		studentsCount++;
		students[studentsCount]=studentProfile(_name, _age, _dob, _email, _phone, _institute, _marks, _isVerified);
	}

}