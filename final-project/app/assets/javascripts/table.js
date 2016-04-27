$(document).ready(function(){
		$(".rmv-btn").on("click", function(){
			$(this).parents('tr').fadeOut();
		});

		function parseTimes(){
			// get the tr
			var TDs = $('.table.table-striped.table-bordered.table-hover > tbody > tr').each(function(index, tr){
				var tdWithUtcDate = $('> td:nth-child(6)');

			});

			// get the td with the data

			// parse the time

			// display the content

			// Get all Tds
			var TDs = $('.table.table-striped.table-bordered.table-hover > tbody > tr > td:nth-child(7)');
			// Get array of hours
			TDs.each(function(index, element){
			 var content = $(this).text();
			 content = new Date(content)
			 content.addMinutes(200).toISOString();

			 debugger;
			 var currentTime = new Date();

			 var now = moment(currentTime).format("DD/MM/YYYY HH:mm:ss"); //"04/09/2013 15:00:00";
			 var then = moment(content).format("DD/MM/YYYY HH:mm:ss"); //"04/09/2013 15:00:00";


			 var ms = moment(now,"DD/MM/YYYY HH:mm:ss").diff(moment(then,"DD/MM/YYYY HH:mm:ss"));
			 var d = moment.duration(ms);
			 var s = Math.floor(d.asHours()) + moment.utc(ms).format(":mm:ss");

			 var tdTimeFormatted = moment(content).hour() + ":" +
					 									 moment(content).minute() + ":" +
														 moment(content).second()

			 console.log(s);

			 // get parents
			 debugger;
			 $(element).parent().find('td:nth-child(5)').text(s);

			 // get child TD to diplay current waiting time
		 });
		}
		setInterval(parseTimes, 1000);
});

Date.prototype.addSeconds = function(seconds) {
					 this.setSeconds(this.getSeconds() + seconds);
					 return this;
			 };

			 Date.prototype.addMinutes = function(minutes) {
					 this.setMinutes(this.getMinutes() + minutes);
					 return this;
			 };

			 Date.prototype.addHours = function(hours) {
					 this.setHours(this.getHours() + hours);
					 return this;
			 };

			 Date.prototype.addDays = function(days) {
					 this.setDate(this.getDate() + days);
					 return this;
			 };

			 Date.prototype.addWeeks = function(weeks) {
					 this.addDays(weeks*7);
					 return this;
			 };

			 Date.prototype.addMonths = function (months) {
					 var dt = this.getDate();

					 this.setMonth(this.getMonth() + months);
					 var currDt = this.getDate();

					 if (dt !== currDt) {
							 this.addDays(-currDt);
					 }

					 return this;
			 };

			 Date.prototype.addYears = function(years) {
					 var dt = this.getDate();

					 this.setFullYear(this.getFullYear() + years);

					 var currDt = this.getDate();

					 if (dt !== currDt) {
							 this.addDays(-currDt);
					 }

					 return this;
			 };
