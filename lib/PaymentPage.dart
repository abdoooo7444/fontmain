import 'package:ect_project/api/food_api.dart';
import 'package:ect_project/model/food_models.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final FoodModels food;
  const PaymentPage({super.key, required this.food});
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedMethod = '';
  TextEditingController phoneController = TextEditingController();
  TextEditingController creditCardController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPaid = false;
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneController.dispose();
    creditCardController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //دة شريط
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(
          'Payment ',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // لون عنوان الشاشة
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: isPaid
                ? Text(
                    ' Payment completed successfully!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                : Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 150),
                        PaymentMethod(
                          icon: Icons.credit_card,
                          methodName: ' Credit Card',
                          isSelected: selectedMethod == ' Credit Card',
                          onTap: () {
                            setState(() {
                              selectedMethod = ' Credit Card';
                            });
                          },
                        ),
                        Visibility(
                          visible: selectedMethod == ' Credit Card',
                          child: Column(
                            children: [
                              TextFormField(
                                controller: creditCardController,
                                decoration: InputDecoration(
                                  labelText: ' Number of Credit Card',
                                  hintText:
                                      'Credit card number must be 16 digits',
                                  labelStyle: TextStyle(
                                      color: Colors.red), // لون النص الرئيسي
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .red), // لون الحدود عند التركيز
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red.withOpacity(
                                            0.5)), // لون الحدود الافتراضي
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a valid credit card number';
                                  }
                                  // if (value.length != 16) {
                                  //   return 'Credit card number must be 16 digits';
                                  // }
                                  // return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: passwordController,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                  labelText: ' Enter Password',
                                  hintText:
                                      'Password must be at least 6 characters',
                                  labelStyle: TextStyle(
                                      color: Colors.red), // لون النص الرئيسي
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .red), // لون الحدود عند التركيز
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red.withOpacity(
                                            0.5)), // لون الحدود الافتراضي
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    color: Colors.red, // لون الأيقونة
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a password';
                                  }
                                  // if (value.length < 6) {
                                  //   return 'Password must be at least 6 characters';
                                  // }
                                  // return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        PaymentMethod(
                          icon: Icons.phone_android,
                          methodName: ' Vodafone Cash',
                          isSelected: selectedMethod == ' Vodafone Cash',
                          onTap: () {
                            setState(() {
                              selectedMethod = ' Vodafone Cash';
                            });
                          },
                        ),
                        Visibility(
                          visible: selectedMethod == ' Vodafone Cash',
                          child: Column(
                            children: [
                              TextFormField(
                                controller: phoneController,
                                decoration: InputDecoration(
                                  labelText: ' Phone number',
                                  labelStyle: TextStyle(
                                      color: Colors.red), // لون النص الرئيسي
                                  prefixText: '+20',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .red), // لون الحدود عند التركيز
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red.withOpacity(
                                            0.5)), // لون الحدود الافتراضي
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a valid phone number';
                                  }
                                  // if (value.length != 10) {
                                  //   return 'phone number must be 10 digits';
                                  // }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: passwordController,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                  labelText: ' Enter Password ',
                                  hintText:
                                      'Password must be at least 6 characters',
                                  labelStyle: TextStyle(
                                      color: Colors.red), // لون النص الرئيسي
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .red), // لون الحدود عند التركيز
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red.withOpacity(
                                            0.5)), // لون الحدود الافتراضي
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    color: Colors.red,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a password';
                                  }
                                  // if (value.length < 6) {
                                  //   return 'Password must be at least 6 characters';
                                  // }
                                  // return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isPaid = true;
                                final FoodModels food = FoodModels(
                                    name: 'pizza',
                                    imageUrl:
                                        'hakeem.png', // Assuming an empty URL for the total item
                                    price: 10000, // Individual price
                                    totalPrice: 40000,
                                    // Total price
                                    phone: phoneController.text,
                                    credit: creditCardController.text,
                                    password: passwordController.text);
                                foodApiServices().addfoodtocart(food);
                              });
                            }
                          },
                          child: Text('Paying off'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // لون الخلفية للزر
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class PaymentMethod extends StatelessWidget {
  final IconData icon;
  final String methodName;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethod({
    Key? key,
    required this.icon,
    required this.methodName,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: isSelected ? Colors.red : null, // لون الأيقونة
          ),
          SizedBox(width: 10),
          Text(
            methodName,
            style: TextStyle(
              color: isSelected ? Colors.red : null, // لون النص
              fontWeight: isSelected ? FontWeight.bold : null,
            ),
          ),
        ],
      ),
    );
  }
}
