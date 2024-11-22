import 'dart:io';
import 'dart:math';

void main() {
  List<String> rpsGame = ["Rock", "Paper", "Scissors"];
  String player1;
  String player2;
  String playAgain = "yes";

  while (playAgain.toLowerCase() == "yes") {
    player1 = rpsGame[Random().nextInt(3)];
    print("Choose Rock, Paper or Scissors");
    player2 = stdin.readLineSync()!;
    print(' 🗿 ' + '  📜 ' + '    ✂️ ');
    print("Rock Paper Scissors ...\nPlayer1 is $player1\nPlayer2 is $player2");
    if (player1.toLowerCase() == player2.toLowerCase()) {
      print("Draw!");
    } else if ((player1.toLowerCase() == "paper" &&
            player2.toLowerCase() == "rock") ||
        (player1.toLowerCase() == "rock" &&
            player2.toLowerCase() == "scissors") ||
        (player1.toLowerCase() == "scissors" &&
            player2.toLowerCase() == "paper")) {
      print(" You Lose!");
    } else if ((player2.toLowerCase() == "paper" &&
            player1.toLowerCase() == "rock") ||
        (player2.toLowerCase() == "rock" &&
            player1.toLowerCase() == "scissors") ||
        (player2.toLowerCase() == "scissors" &&
            player1.toLowerCase() == "paper")) {
      print(" You Win!");
    } else {
      print("Invalid Input");
    }
    print("Play Again?");
    playAgain = stdin.readLineSync()!;
  }
}
