import java.util.Scanner;
public class ATMBalanceCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] denominations = {2000, 500, 200, 100};
        int[] notesCount = new int[denominations.length];
        System.out.println("Enter the priority of denominations in the following order: 2000, 500, 200, 100");
        System.out.println("For example, entering '1 2 3 4' means 2000 has the highest priority and 100 has the lowest priority.");
        int[] priority = new int[denominations.length];
        for (int i = 0; i < priority.length; i++) {
            priority[i] = scanner.nextInt();
        }
        for (int i = 0; i < priority.length; i++) {
            System.out.println("Enter the number of notes for denomination " + denominations[priority[i] - 1] + ":");
            notesCount[priority[i] - 1] = scanner.nextInt();
        }
        int totalBalance = 0;
        for (int i = 0; i < denominations.length; i++) {
            totalBalance += denominations[i] * notesCount[i];
        }
        System.out.println("Total available balance in the ATM machine: ₹" + totalBalance);
    }
}
