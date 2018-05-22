// require in mysql and inquirer
var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require("cli-table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazon_db"
});

function getItems() {
    connection.query("SELECT item_id, product_name, price FROM products ORDER BY price asc", function (err, res) {
        if (err) throw err;
        var displayTable = new Table({
            head: ["Item ID", "Product Name", "Price"],
            colWidth: [10, 30, 10],
        });
        for (var i = 0; i < res.length; i++) {
            displayTable.push(
                [res[i].item_id, res[i].product_name, res[i].price]
            )
        }
        console.log(displayTable.toString());
        makePurchase();

    });
}
//testing getItems
//getItems();

function makePurchase(){
    inquirer 
    .prompt([
        {
            name:"itemID",
            type:"input",
            message:"Please enter an item number of the item you would like to buy"
        },
        {
            name:"quantity",
            type:"input",
            message: "Enter the quantity of the items to buy?"
        },
    ])
    .then(function(answers) {
        var items = answers.itemID;
        var quantOrdered = answers.quantity;
        
        itemsPurchased(items, quantOrdered);
    });
    }
//testing makePurchase
//getItems();

function itemsPurchased(item, orderQuantity) {
    //check quantity 
    connection.query("SELECT * FROM Products WHERE item_id = " + item, function(error, response) {
        if (error) throw err;
        //if in stock
        if (orderQuantity <= response[0].stock_quantity) {
            //calculate cost
            var totalCost = response[0].price * orderQuantity;
            //inform user
            console.log("Your purchase has been successfull");
            console.log("Your total cost for " + orderQuantity + " " + response[0].product_name + " is " + totalCost + ". Thank you for your Business!");
            //update database
            connection.query('UPDATE Products SET stock_quantity= stock_quantity- ' + orderQuantity + ' WHERE item_id = ' + item);
        } else {
            console.log("Sorry, we do not have enough " + response[0].product_name + " to fulfill the order.");
        }
        start();
        getItems();
    });

}
getItems();
function start(){
    items = 0;
    quantity = 0;
    totalCost = 0;
}

