var mysql = require ("mysql");
var inquirer = require ("inquirer");
var choose = 0;
var amount = 0;
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_DB"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
  });
  
  function afterConnection() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.log(res);
      picks(res);
      connection.end();
    });
  }
   function picks(res) {
    inquirer
      .prompt([{
        name: "choice",
        type: "input",
        message: "Choose item by ID",
      },
      {
        name: "quantity",
        type: "input",
        message: "Hooowwww manyyyyyy???",

      }])
        .then(function(answer){
            choose = answer.choice;
            amount = answer.quantity;
            purchase(res);
            console.log(choose);
            console.log(amount);
        })
   }

function purchase(list){

    console.log(list[choose].stock_quantity);
    if (amount>list[choose].stock_quantity){
        console.log("Insufficient Quantity")
    }
}
   
//    function quantity () {
//     inquirer
//       .prompt({
//         name: "quantity",
//         type: "number",
//         message: "Hooowwww manyyyyyy???",

//       })
//       .then(function(answer){
//         console.log(answer.quantity);
//       })
//    }
