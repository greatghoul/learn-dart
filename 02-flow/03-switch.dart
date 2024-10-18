void main() {
  // switch case on number
  var dayOfWeek = 9;
  switch (dayOfWeek) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
      break;
  }

  // switch case on string
  const weather = "cloudy";
  switch (weather) {
    case "sunny":
      print("It's sunny");
      break;
    case "cloudy":
      print("It's cloudy");
      break;
    case "rainy":
      print("It's rainy");
      break;
    default:
      print("Sorry, I am not familiar with such weather.");
      break;
  }

  // switch case on enum
  const weather2 = Weather.sunny;
  switch (weather2) {
    case Weather.sunny:
      print("It's sunny");
      break;
    case Weather.snowy:
      print("It's snowy");
      break;
    case Weather.cloudy:
      print("It's cloudy");
      break;
    case Weather.rainy:
      print("It's rainy");
      break;
    default:
      print("Sorry, I am not familiar with such weather.");
      break;
  }
}

enum Weather { sunny, snowy, cloudy, rainy }
