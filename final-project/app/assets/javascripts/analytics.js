$(document).ready(function() {

	var rice = document.getElementById('rice').getContext('2d');
	var riceData = {
	labels : ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday", "Sunday"],
	datasets :
	 [
	    {
	      fillColor : "rgba(36, 42, 48, 0.5)",
	      strokeColor : "#242a30",
	      pointColor : "#FFF",
	      pointStrokeColor : "rgba(54, 138, 222)",
	      data : [2000,1200,1900,1800,2900,2300,1200]
	    }
	 ]
	}

	new Chart(rice).Line(riceData);


	var rice = document.getElementById('myBarChart').getContext('2d');
	var riceData = {
	labels : ["January","February","March","April","May","June", "July", "August", "September", "October", "November", "December"],
	datasets :
	 [
	    {

	      fillColor : "rgba(36, 42, 48, 0.5)",
	      strokeColor : "#242a30",
	      pointColor : "#FFF",
	      pointStrokeColor : "rgba(54, 138, 222)",
	      data : [52000,60000,55000,58000,62000,60000,59000,63000,60000,54000,55000,57000]
	    }
	 ]
	}

	new Chart(rice).Line(riceData);


	// // 2nd chart
	// var data = {
	//     labels: ["January", "February", "March", "April", "May", "June", "July"],
	//     datasets: [
	//         {
	//             label: "My First dataset",

	//             // The properties below allow an array to be specified to change the value of the item at the given index
	//             // String  or array - the bar color
	//             backgroundColor: "rgba(255,99,132,0.2)",

	//             // String or array - bar stroke color
	//             borderColor: "rgba(255,99,132,1)",

	//             // Number or array - bar border width
	//             borderWidth: 1,

	//             // String or array - fill color when hovered
	//             hoverBackgroundColor: "rgba(255,99,132,0.4)",

	//             // String or array - border color when hovered
	//             hoverBorderColor: "rgba(255,99,132,1)",

	//             // The actual data
	//             data: [65, 59, 80, 81, 56, 55, 40],

	//             // String - If specified, binds the dataset to a certain y-axis. If not specified, the first y-axis is used.
	//             yAxisID: "y-axis-0",
	//         },
	//         {
	//             label: "My Second dataset",
	//             backgroundColor: "rgba(54,162,235,0.2)",
	//             borderColor: "rgba(54,162,235,1)",
	//             borderWidth: 1,
	//             hoverBackgroundColor: "rgba(54,162,235,0.4)",
	//             hoverBorderColor: "rgba(54,162,235,1)",
	//             data: [28, 48, 40, 19, 86, 27, 90]
	//         }
	//     ]
	// }

	// var ctx = document.getElementById('myBarChart').getContext('2d');
	// var myBarChart = new Chart(ctx, {

	//     datasets: riceData,
	//     options: {}
	// });

	// ;



});
