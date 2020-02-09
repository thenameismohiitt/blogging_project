$(function() {

	$("#username_error_message").hide();
	$("#password_error_message").hide();
	$("#retype_password_error_message").hide();
	$("#lastname_error_message").hide();
	$("#user_error_message").hide();

	var error_username = false;
	var error_password = false;
	var error_retype_password = false;
	var error_lastname = false;
	var error_user = false;

	$("#form_username").focusout(function() {

		check_username();
		
	});

	$("#form_password").focusout(function() {

		check_password();
		
	});

	$("#form_retype_password").focusout(function() {

		check_retype_password();
		
	});

	$("#form_lastname").focusout(function() {

		check_lastname();

	});
	$("#form_user").focusout(function() {

		check_user();

	});

	function check_username() {
	
		var username_length = $("#form_username").val().length;
		
		if(username_length < 3 || username_length > 15) {
			$("#username_error_message").html("Should be between 3-15 characters");
			$("#username_error_message").show();
			error_username = true;
		} else {
			$("#username_error_message").hide();
		}
	
	}

	function check_password() {
	
		var password_length = $("#form_password").val().length;
		
		if(password_length < 4) {
			$("#password_error_message").html("At least 4 characters");
			$("#password_error_message").show();
			error_password = true;
		} else {
			$("#password_error_message").hide();
		}
	
	}

	function check_retype_password() {
	
		var password = $("#form_password").val();
		var retype_password = $("#form_retype_password").val();
		
		if(password !=  retype_password) {
			$("#retype_password_error_message").html("Passwords don't match");
			$("#retype_password_error_message").show();
			error_retype_password = true;
		} else {
			$("#retype_password_error_message").hide();
		}
	
	}
	function check_lastname() {

		var lastname_length = $("#form_lastname").val().length;

		if(lastname_length < 3 || lastname_length > 15) {
			$("#lastname_error_message").html("Should be between 3-15 characters");
			$("#lastname_error_message").show();
			error_lastname = true;
		} else {
			$("#lastname_error_message").hide();
		}

	}
	function check_user() {

		var user_length = $("#form_user").val().length;

		if(user_length < 5 || user_length > 20) {
			$("#user_error_message").html("Should be between 5-20 characters");
			$("#user_error_message").show();
			error_user = true;
		} else {
			$("#user_error_message").hide();
		}

	}


	$("#registration_form").submit(function() {
											
		error_username = false;
		error_password = false;
		error_retype_password = false;
		error_lastname = false;
		error_user = false;
		check_username();
		check_password();
		check_retype_password();
		check_lastname();
		check_user();
		if(error_username == false && error_password == false && error_retype_password == false && error_lastname == false && error_user==false)
		{
			return true;
		} else {
			return false;	
		}

	});

});