<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/product_info.css">
</head>
<body>
<section>
		<div class="container flex">
			<div class="left">
				<div class="main_image">
					<img src="../img/m1.jpeg" class="slide">
				</div>
				<div class="option flex">
					<img src="../img/m1.jpeg" onclick="img('../img/m1.jpeg')"> <img
						src="../img/m2.jpeg" onclick="img('../img/m2.jpeg')"> <img
						src="../img/m3.jpeg" onclick="img('../img/m3.jpeg')"> <img
						src="../img/m4.jpeg" onclick="img('../img/m4.jpeg')"> <img
						src="../img/m5.jpeg" onclick="img('../img/m5.jpeg')"> <img
						src="../img/m6.jpeg" onclick="img('../img/m6.jpeg')">
				</div>
			</div>
			<div class="right">
				<h3>Apple MacBook Pro13" M2 Chip with 8-Core CPU and 10-Core
					GPU 512GB Storage 8GB RAM-Space Gray</h3>
				<h4>
					<small>Rs</small>243,000.00
				</h4>
				<p>Apple M2 8-Core Chip 8GB Unified RAM | 512GB SSD 13.3" 2560 x
					1600 Retina IPS Display 10-Core GPU | 16-Core Neural Engine Wi-Fi 6
					(802.11ax) | Bluetooth 5.0 Thunderbolt 3 FaceTime HD 720p Camera
					Backlit Magic Keyboard Force Touch Trackpad | Touch ID Sensor macOS</p>
				<h5>Color-SPACE GRAY</h5>
				<div class="color flex1">
					<span></span> <span></span> <span></span> <span></span> <span></span>
					<span></span> <span></span>
				</div>
				<h5>Number</h5>
				<div class="row ">
					<div class="large-6 small-12 column left-align">
						<div class="block_quantity clearfix">
							<span class="text_specification">Quantity</span>
							<div class="block_quantity__chooseBlock">
								<input class="block_quantity__number" name="quantityNumber"
									type="text" min="1" value="1">
								<button class="block_quantity__button block_quantity__up"></button>
								<button class="block_quantity__button block_quantity__down"></button>
							</div>
						</div>
					</div>

					<button type="submit">Add to Cart</button>
					<button type="submit">Buy Now</button>
				</div>
			</div>
		</div>
	</section>
	<script>
		function img(anything) {
			document.querySelector('.slide').src = anything;
		}

		function change(change) {
			const line = document.querySelector('.home');
			line.style.background = change;
		}

		window.onload = function() {
			var up = document.getElementsByClassName('block_quantity__up')[0], down = document
					.getElementsByClassName('block_quantity__down')[0], input = document
					.getElementsByClassName('block_quantity__number')[0];

			function getValue() {
				return parseInt(input.value);
			}

			up.onclick = function(event) {
				input.value = getValue() + 1;
			};
			down.onclick = function(event) {
				if (input.value <= 1) {
					return 1;
				} else {
					input.value = getValue() - 1;
				}

			}
		};
	</script>

</body>
</html>