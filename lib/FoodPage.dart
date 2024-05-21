import 'package:ect_project/model/food_models.dart';
import 'package:flutter/material.dart';
import 'package:ect_project/PaymentPage.dart';

class Food {
  final String name;
  final String imageUrl;
  final double price;

  Food({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

class Cart {
  final Food food;
  int quantity;

  Cart({required this.food, this.quantity = 1});
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final List<Food> foods = [
    Food(
      name: 'Pizza',
      imageUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi7iXDTwgUp0Bvlrn8e6eF4NT9LQhkeAT2e-JzeMDjDb6rPZUw9HIQL-11UftOOjC8iIU3xmNgfY7nueOH7D-Ux5H4pQa9aqSvHHuO-NsW3Y8RYvYpGXwQ8EhkWKNGo00XU5KeNUtnSAZSncc_RK3qOqUnhTy4FD51LhNwPPgtMrGF5oSLWFDLelRY6bq0i/s1280/2.jpg',
      price: 10.99,
    ),
    Food(
      name: 'Burger',
      imageUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiEUChmCBDM0R7_DUqyiNb9siybWuI-N7ThNxirTdRQXFIgAs_f76232K44oIi1MiU5fSK924Hkzjvh2TTBalsC1RuEjTI4omtfEFIt7IkOzrKqiWkHf2TXqglrgaoskPorIfOKB0QiQpX5a1gEaVx11iuDxOg4cgi6UmKwC6RxFLvQIvhdgRkdTAw8SLzq/s402/%D8%A8%D8%B1%D8%BA%D8%B1.png',
      price: 8.99,
    ),
    Food(
      name: 'COLA',
      imageUrl:
          'https://shop.alamer-market.com/storage/images/products/5449000276308.jpg',
      price: 6.99,
    ),
    Food(
      name: 'PEPSI',
      imageUrl:
          'https://shop.alamer-market.com/storage/images/products/012000000133.jpg',
      price: 6.99,
    ),
    Food(
      name: 'POPCORN',
      imageUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg5tKSTeTqSwBaV3AzfpqOdB1Zg9ImDIB2gYO2iwSAnX9XY3U2yFbTNy-DPlVLjOXJgDlvblcnJkBQkOflRmirQsF4cGiak6tzZilhXQvVXz-AVV4aVkfTEGsmkxgJfPVr6mGqhhh4L9VPvwu89hg7a4lIH7ArzxawgAXPqGSYQoXfYFpVsshAq4TIiTlNB/s402/%D8%B9%D9%84%D8%A8%D8%A9-%D9%81%D8%B4%D8%A7%D8%B1.png',
      price: 4.99,
    ),
    // Add more foods here
  ];

  List<Cart> cartItems = [];

  double gettotalPrice() {
    return cartItems.fold(
        0,
        (previousValue, element) =>
            previousValue + (element.quantity * element.food.price));
  }

  void addToCart(Food food) {
    int index = cartItems.indexWhere((item) => item.food.name == food.name);
    if (index != -1) {
      setState(() {
        cartItems[index].quantity++;
      });
    } else {
      setState(() {
        cartItems.add(Cart(food: food));
      });
    }
  }

  void clearCart() {
    setState(() {
      cartItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Food Menu',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(foods[index].imageUrl),
                  ),
                  title: Text(foods[index].name),
                  subtitle: Text('\$${foods[index].price.toStringAsFixed(2)}'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      addToCart(foods[index]);
                    },
                    child: Text('Buy'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Button background color
                    ),
                  ),
                );
              },
            ),
          ),
          if (cartItems.isNotEmpty) FoodCart(totalPrice: gettotalPrice()),
          if (cartItems.isNotEmpty)
            ElevatedButton(
              onPressed: clearCart,
              child: Text('Clear Cart'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button background color
              ),
            ),
        ],
      ),
    );
  }
}

class FoodCart extends StatelessWidget {
  final double totalPrice;

  FoodCart({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Price: \$${totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              final FoodModels food = FoodModels(
                name: 'pizza',
                imageUrl:
                    'hakeem.png', // Assuming an empty URL for the total item
                price: 10000, // Individual price
                totalPrice: 334324, // Total price
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentPage(food: food),
                ),
              );
            },
            child: Text('Checkout'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Button background color
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentPagefood extends StatelessWidget {
  final FoodModels food;

  PaymentPagefood({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
            'Proceed with the payment for ${food.name} costing \$${food.totalPrice}'),
      ),
    );
  }
}
