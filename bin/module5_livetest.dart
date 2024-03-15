void main() {
  List<Map<String, dynamic>> fruits = [
    {
      'name': 'Guava',
      'color': 'Green',
      'price': 10.5
    },
    {
      'name': 'Strawberry',
      'color': 'Red',
      'price': 20.8},
    {
      'name': 'Orange',
      'color': 'Yellow',
      'price': 30.2}
  ];

  print("Original Price before Discount:");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']},"

        " Color: ${fruit['color']}, "

        "Price: Taka ${fruit['price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    fruit['price'] = originalPrice - discountAmount;
  }
}