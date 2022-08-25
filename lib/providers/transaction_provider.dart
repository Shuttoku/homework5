import 'package:database1/models/Transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier{
    
    List<Transaction> transactions = [
      Transaction(title: "หนังสือ",amount: 500,date:DateTime.now()),
      Transaction(title: "กางเกง",amount: 500,date:DateTime.now()),
      Transaction(title: "เสื้อ",amount: 500,date:DateTime.now()),
      Transaction(title: "แว่น",amount: 500,date:DateTime.now())
    ];

    List<Transaction>getTransaction(){
      return transactions;
    }
    void addTransaction(Transaction statement){
        transactions.add(statement);
    }
}

