var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
	host: "localhost",
	port: 3306,

	user: "root",

	password: "",
	database: "bamazonDB"
});

connection.connect(function(err) {
	if (err) throw err;

	start();
});

function start() {

	connection.query("SELECT * FROM products", function(err, res) {
    	if (err) throw err;

    	inquirer.prompt([
    	{
    		name: "choice",
    		type: "rawlist",
    		choices: function() {
    			var choiceArray = [];
    			for (var h = 0; h < res.length; h++) {
    				choiceArray.push(res[h].item_id, res[h].product_name, res[h].department_name, res[h].price, res[h].stock_quantity);
    			}
    			return choiceArray;
    	},

    		message: "Please enter the ID number of the product you would like to purchase"

    	},

		{
			type: "input",
			name: "userInputQuantity",
			message: "Please enter the quantity of this product you would like to purchase"
		}

		]).then(function(answer) {
			var chosenItem;
			for (var i = 0; i < res.length; i++) {
				if (res[i].item_id === answer.choice) {
					chosenItem = res[i];
				}
			}

		if (chosenItem.stock_quantity < answer.userInputQuantity) {
			console.log("Insufficient quantity!");
		}

		else {
			var newStockQty = chosenItem.stock_quantity - answer.userInputQuantity;
			console.log(newStockQty);
		}

	});

  	});

}