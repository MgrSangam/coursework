<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/addtocart.css">
</head>

<body>

<div class="small-container cart-page">
        <table>
            <tr>
                <th class="product">Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        
                        <div class="check">
                            <input type="checkbox" class="check1" name="checkbox3" value="item3" >
                        </div>
                        <label for="checkbox1"> </label>
                        <img src="photo/speaker.webp">
                        <div>
                            <p>Mini Speaker</p>
                            <small>Price 2300</small> 
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>Rs 5000</td>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <div class="check">
                            <input type="checkbox" class="check1" name="checkbox3" value="item3" >
                        </div>
                        <label for="checkbox2"> </label>
                        <img src="photo/headphone.jpeg">
                        <div>
                            <p>HP-170 Headphone</p>
                            <small>Price 4300</small> 
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>Rs 5000</td>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <div class="check">
                            <input type="checkbox" class="check1" name="checkbox3" value="item3" >
                        </div>
                        <label for="checkbox3"> </label>
                        <img src="photo/airbuds.webp">
                        <div>
                            <p>Earbuds Bluetooth</p>
                            <small>Price 1300</small> 
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <td>Rs 5000</td>
            </tr>
        </table>

        

    </div>

    <div class="total-price">
        <div class="summary">
            Order Summary
        </div>

        <div class="total">
            <p> Total</p>
            <p class="price_total"> Rs 6,000</p>
        </div>

        <div class="checkout">
            <button class="button">Proceed to Checkout</button>
        </div>
    </div>


</body>
</html>