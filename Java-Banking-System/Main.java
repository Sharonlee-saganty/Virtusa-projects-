import java.util.ArrayList;
import java.util.Scanner;
class Account{
    String account_holder_name;
    double balance;
    ArrayList<String> history=new ArrayList<>();
    Account(String name, double initial_balance) {
        account_holder_name =name;
        balance = initial_balance;
    }
    void deposit(double amount){
        if (amount<=0){
            System.out.println("Invalid deposit amount.");
            return;
        }
        balance += amount;
        history.add("Deposit: " + amount);
        System.out.println("Amount deposited successfully");

    }
    void check_balance(){
        System.out.println("Current Balance: " + balance);

    }
    void show_history(){
        System.out.println("Transaction History:");
        if (history.size() == 0) {
            System.out.println("No transactions yet.");
            return;
        } 
        int start=Math.max(0, history.size() - 5);
        for (int i = start; i < history.size(); i++) {
            System.out.println(history.get(i));
        }
    }
    void withdraw(double amount ) throws Exception{
        if (amount<=0){
            throw new Exception("Invalid Amount");

        }
        if (amount>balance){
            throw new Exception("Insufficient Balance");

        }
        if (amount>20000){
            System.out.println("Limit exceeded. The maximum is 20,000/- per transaction.");
            return ;
        }
        balance -= amount;
        history.add("Withdraw: " + amount);
        System.out.println("The amount is withdrawn successfully.");
    }
}
public class Main{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter account holder name: ");
        String name= sc.nextLine();
        Account user = new Account(name,0);
        int choice;
        do{
            System.out.println("Choose an option:");
            System.out.println("1.Deposit");
            System.out.println("2.Withdraw");
            System.out.println("3.Check Balance");  
            System.out.println("4.Transaction History");
            System.out.println("5.Exit");

            choice=sc.nextInt();
            try {
                switch(choice){
                    case 1:
                        System.out.print("Enter amount:");
                        double dep = sc.nextDouble();
                        user.deposit(dep);
                        break;
                    case 2:
                        System.out.print("Enter amount:");
                        double money = sc.nextDouble();
                        user.withdraw(money);
                        break;
                    case 3:
                        user.check_balance();
                        break;
                    case 4:
                        user.show_history();
                        break;  
                    case 5:
                        System.out.println("Thank you for using the banking system!!");
                        break;
                    default:
                        System.out.println("Invalid choice. Choose from given options.");

                    }
                } catch (Exception e) {
                    System.out.println("Error:"+e.getMessage());
                }
            }
            while(choice!=5);
             sc.close();
            }
        }

    
