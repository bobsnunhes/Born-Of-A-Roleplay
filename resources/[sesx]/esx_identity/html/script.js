$(function() {
	window.addEventListener('message', function(event) {
		if (event.data.type == "enableui") {
			document.body.style.display = event.data.enable ? "block" : "none";
		}
	});

	document.onkeyup = function (data) {
		if (data.which == 27) { // Escape key
			$.post('http://esx_identity/escape', JSON.stringify({}));
		}
	};
	
	$("#register").submit(function(event) {
		event.preventDefault(); // Prevent form from submitting
		
		// Verify date
		var date = $("#dateofbirth").val();
		var dateCheck = new Date($("#dateofbirth").val());

		if (dateCheck == "Invalid Date") {
			date == "invalid";
		}

		$.post('http://esx_identity/register', JSON.stringify({
			firstname: $("#firstname").val(),
			lastname: $("#lastname").val(),
			dateofbirth: date,
			sex: $("input[type='radio'][name='sex']:checked").val(),
			height: $("#height").val()
		}));
	});

	document.getElementById("dateofbirth").addEventListener('change', function() {
		var data = new Date(this.value);
		if(isDate_(this.value) && data.getFullYear() > 1900)
			document.getElementById("idade").value = calculateAge(this.value)+ " anos";
	});
	
	function calculateAge(dobString) {
		var dob = new Date(dobString);
		var currentDate = new Date();
		var currentYear = currentDate.getFullYear();
		var birthdayThisYear = new Date(currentYear, dob.getMonth(), dob.getDate());
		var age = currentYear - dob.getFullYear();
		if(birthdayThisYear > currentDate) {
			age--;
		}
		return age;
	}
	
	function calcular(data) {
		var data = document.form.dateofbirth.value;
		alert(data);
		var partes = data.split("/");
		var junta = partes[2]+"-"+partes[1]+"-"+partes[0];
		document.form.idade.value = (calculateAge(junta));
	}
	
	var isDate_ = function(input) {
			var status = false;
			if (!input || input.length <= 0) {
				status = false;
			} else {
				var result = new Date(input);
				if (result == 'Data Inválida') {
					status = false;
				} else {
					status = true;
				}
			}
			return status;
	}
});
