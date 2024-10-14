
<!DOCTYPE html>
<html>
<head id="j_idt2">
<title>Add Stock</title><html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!--========== BOX ICONS ==========-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />

        <!--========== CSS ==========-->
        <link rel="stylesheet" href="resources/css/navbar.css" />

        <title>Stock Management System</title>

    </head>
    <body>
        <!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
                <img src="assets/img/perfil.jpg" alt="" class="header__img" />

                <a href="#" class="header__logo">StockPro.</a>
    
                
    
                <div class="header__toggle">
                    <i class="bx bx-menu" id="header-toggle"></i>
                </div>
            </div>
        </header>

        <!--========== NAV ==========-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class="bx bxs-disc nav__icon"></i>
                        <span class="nav__logo-name">StockPro.</span>
                    </a>
    
                    <div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
    
                            <a href="adminhome.jsp" class="nav__link active">
                                <i class="bx bx-home nav__icon"></i>
                                <span class="nav__name">Home</span>
                            </a>
                            
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class="bx bx-user nav__icon"></i>
                                    <span class="nav__name">Profile</span>
                                    <i class="bx bx-chevron-down nav__icon nav__dropdown-icon"></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="" class="nav__dropdown-item">My Profile</a>
                                        
                                    </div>
                                </div>
                            </div>

                            
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Manage</h3>
    
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class="bx bx-bell nav__icon"></i>
                                    <span class="nav__name">Manage Suppliers</span>
                                    <i class="bx bx-chevron-down nav__icon nav__dropdown-icon"></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="supplierreg.jsf" class="nav__dropdown-item">Add</a>
                                        <a href="viewallsuppliers.jsf" class="nav__dropdown-item">View</a>
                                        <a href="updatesupplier.jsf" class="nav__dropdown-item">Update</a>
                           
                                    </div>
                                </div>
                                
                                <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class="bx bx-bell nav__icon"></i>
                                    <span class="nav__name">Manage Stock</span>
                                    <i class="bx bx-chevron-down nav__icon nav__dropdown-icon"></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="addstock.jsf" class="nav__dropdown-item">Add</a>
                                        <a href="viewallstock.jsf" class="nav__dropdown-item">View</a>
                                        <a href="updatestock.jsf" class="nav__dropdown-item">Update</a>
                                        
                                    </div>
                                </div>

                            </div>

                            </div>

                            <a href="#" class="nav__link">
                                <i class="bx bx-compass nav__icon"></i>
                                <span class="nav__name">Explore</span>
                            </a>
                            <a href="#" class="nav__link">
                                <i class="bx bx-bookmark nav__icon"></i>
                                <span class="nav__name">Saved</span>
                            </a>
                        </div>
                    </div>
                </div>

                <a href="login.jsf" class="nav__link nav__logout">
                    <i class="bx bx-log-out nav__icon"></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>

        <!--========== CONTENTS ==========-->
        

        <!--========== MAIN JS ==========-->
        <script src="assets/js/main.js"></script>
    </body>
</html>  
<style type="text/css">
        /* Import Google font - Poppins */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
  
}
.container {
  position: relative;
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 8px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}
.container header {
  font-size: 1.5rem;
  color: #333;
  font-weight: 500;
  text-align: center;
}
.container .form {
  margin-top: 30px;
}
.form .input-box {
  width: 100%;
  margin-top: 20px;
}
.input-box label {
  color: #333;
}
.form :where(.input-box input, .select-box) {
  position: relative;
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  margin-top: 8px;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
}
.input-box input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.form .column {
  display: flex;
  column-gap: 15px;
}
.form .gender-box {
  margin-top: 20px;
}
.gender-box h3 {
  color: #333;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.form :where(.gender-option, .gender) {
  display: flex;
  align-items: center;
  column-gap: 50px;
  flex-wrap: wrap;
}
.form .gender {
  column-gap: 5px;
}
.gender input {
  accent-color: rgb(130, 106, 251);
}
.form :where(.gender input, .gender label) {
  cursor: pointer;
}
.gender label {
  color: #707070;
}
.address :where(input, .select-box) {
  margin-top: 15px;
}
.select-box select {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  color: #707070;
  font-size: 1rem;
}
.button {
  height: 55px;
  width: 100%;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  margin-top: 30px;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease;
  background: rgb(130, 106, 251);
}
.form button:hover {
  background: rgb(88, 56, 250);
}
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
    .input-box input[type="file"] {
            display: none;
        }
        
        .input-box label[for="image"] {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: rgb(130, 106, 251);
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }
        
        .input-box label[for="image"]:hover {
            background-color: rgb(88, 56, 250);
        }
        
        .input-box .file-name {
            margin-top: 10px;
            font-size: 0.9rem;
            color: #707070;
        }
  .form :where(.gender-option, .gender) {
    row-gap: 15px;
  }
}
    </style><link type="text/css" rel="stylesheet" href="RES_NOT_FOUND" /></head> 
<body> 

<section class="container">
<header>Enter Stock</header>
<form id="j_idt9" name="j_idt9" method="post" action="insertStock" class="form" enctype="multipart/form-data">
<input type="hidden" name="j_idt9" value="j_idt9" />


<div class="input-box"><label for="j_idt9:id">Enter Item Code</label><input id="j_idt9:id" type="text" name="sid" /> 
</div>

<div class="input-box"><label for="j_idt9:sname">Enter Stock name</label><input id="j_idt9:sname" type="text" name="sname" />
</div>


<div class="input-box"><label for="j_idt9:qty">Enter Quantity</label><input id="j_idt9:qty" type="text" name="sqty" value="0" />
</div>

<div class="input-box"><label for="j_idt9:price">Enter Price</label><input id="j_idt9:price" type="text" name="scost" value="0.0" />
</div>



<div class="select-box"><select id="j_idt9:category" name="scategory" size="1">	<option value="">Category</option>
	<option value="Raw material">Raw material</option>
	<option value="Service">Service</option>
	<option value="Finished goods">Finished Goods</option>
</select>
</div> 

<div class="input-box">
                <label for="image">Choose image</label>
                <input id="image" type="file" name="simage" required />
                <span class="file-name">No file chosen</span>
            </div>

<div class="input-box"><label for="j_idt9:date">Enter Purchase Date</label><input type="text" name="purchasedate" />

<div class="input-box"><label for="j_idt9:addedBy">Enter adder username</label><input id="j_idt9:addedBy" type="text" name="addedBy" />
</div>
</div><label for="j_idt9:add"></label><input id="j_idt9:add" type="submit" name="j_idt9:add" value="Add" class="button" /><input type="hidden" name="javax.faces.ViewState" id="j_id1:javax.faces.ViewState:0" value="-3443804382731155526:8894396467302634904" autocomplete="off" />
</form>



</section>
<script>
        const fileInput = document.getElementById('image');
        const fileNameDisplay = document.querySelector('.file-name');

        fileInput.addEventListener('change', () => {
            fileNameDisplay.textContent = fileInput.files.length > 0 ? fileInput.files[0].name : 'No file chosen';
        });
    </script>
</body> 
</html>