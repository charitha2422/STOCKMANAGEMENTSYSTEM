<%@page import="com.klef.ep.models.Supplier"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.List"%>
<%@page import="javax.ejb.EJB"%>
<%
Supplier supplier = (Supplier) session.getAttribute("supplier");
if(supplier == null)
{
  response.sendRedirect("sessionexpiry.html");
}
%>



<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--========== BOX ICONS ==========-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <!--========== CSS ==========-->
        <link rel="stylesheet" href="resources/css/navbar.css">

        <title>Stock Management System</title>
        
        <style>
         @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background: #F9F6FD;
}
::selection{
  color: #fff;
  background: #1cc7d0;
}
.wrapper{
  height: 400px;
  width: 320px;
  position: relative;
  transform-style: preserve-3d;
 perspective: 1000px;
}
.wrapper .card{
  position: absolute;
  height: 100%;
  width: 200%;
  padding: 5px;
  background: #fff;
  border-radius: 10px;
  transform: translateY(0deg);
  transform-style: preserve-3d;
  backface-visibility: hidden;
  box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
  transition: transform 0.7s cubic-bezier(0.4,0.2,0.2,1);
}
.wrapper:hover > .front-face{
  transform: rotateY(-180deg);
}
.wrapper .card img{
  height: 100%;
  width: 100%;
  object-fit: cover;
  border-radius: 10px;
}
.wrapper .back-face{
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  flex-direction: column;
  transform: rotateY(180deg);
}
.wrapper:hover > .back-face{
  transform: rotateY(0deg);
}
.wrapper .back-face img{
  height: 150px;
  width: 150px;
  padding: 5px;
  border-radius: 50%;
  background: linear-gradient(375deg, #1cc7d0, #2ede98);
}
.wrapper .back-face .info{
  text-align: center;
}
.back-face .info .title{
  font-size: 30px;
  font-weight: 500;
}
.back-face ul{
  display: flex;
}
.back-face ul a{
  display: block;
  height: 40px;
  width: 40px;
  color: #fff;
  text-align: center;
  margin: 0 5px;
  line-height: 38px;
  border: 2px solid transparent;
  border-radius: 50%;
  background: linear-gradient(375deg, #1cc7d0, #2ede98);
  transition: all 0.5s ease;
}
.back-face ul a:hover{
  color: #1cc7d0;
  border-color: #1cc7d0;
  background: linear-gradient(375deg, transparent, transparent);
}
        </style>
        
    </head>
    <body>
        <!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
                <img src="assets/img/perfil.jpg" alt="" class="header__img">

                <a href="#" class="header__logo">StockPro.</a>
    
                <!-- <div class="header__search">
                    <input type="search" placeholder="Search" class="header__input">
                    <i class='bx bx-search header__icon'></i>
                </div> -->
    
                <div class="header__toggle">
                    <i class='bx bx-menu' id="header-toggle"></i>
                </div>
            </div>
        </header>

        <!--========== NAV ==========-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class='bx bxs-disc nav__icon' ></i>
                        <span class="nav__logo-name">StockPro.</span>
                    </a>
    
                    <div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
    
                            <a href="supplierhome.jsp" class="nav__link active">
                                <i class='bx bx-home nav__icon' ></i>
                                <span class="nav__name">Home</span>
                            </a>
                            
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-user nav__icon' ></i>
                                    <span class="nav__name">Profile</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="supplierprofile.jsp" class="nav__dropdown-item">My Profile</a>
                                        <a href="updatesupplier.jsp" class="nav__dropdown-item">Update Profile</a>
                                    </div>
                                </div>
                            </div>

                            
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Manage</h3>
    
                            
                            
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-bell nav__icon' ></i>
                                    <span class="nav__name">Manage Stock</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="addstockbysupplier.jsf" class="nav__dropdown-item">Add</a>
                                        <a href="viewallstockbysupplier.jsf" class="nav__dropdown-item">View</a>
                                        <a href="updatestockbysupplier1.jsp" class="nav__dropdown-item">Update</a>
                                        
                                    </div>
                                </div>

                            </div>

                            <a href="#" class="nav__link">
                                <i class='bx bx-compass nav__icon' ></i>
                                <span class="nav__name">Explore</span>
                            </a>
                            <a href="#" class="nav__link">
                                <i class='bx bx-bookmark nav__icon' ></i>
                                <span class="nav__name">Saved</span>
                            </a>
                        </div>
                    </div>
                </div>

                <a href="login.jsf" class="nav__link nav__logout">
                    <i class='bx bx-log-out nav__icon' ></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>

        <!--========== CONTENTS ==========-->
        <main>
            <section>
                
<div class="wrapper">
         <div class="card front-face">
            <img src="resources/css/me.jpg">
         </div>
         <div class="card back-face">
            <img src="resources/css/me.jpg">
            <div class="info">
               <div class="title">
                  StockPro
               </div>
               <p>
                  <%=supplier.getCategory() %> Supplier <br/>
                  ID:<%=supplier.getId()%><br/>
Name:<%=supplier.getName()%><br/>
Gender:<%=supplier.getGender()%><br/>
Age:<%=supplier.getAge()%><br/>
Category:<%=supplier.getCategory()%><br/>
Email:<%=supplier.getEmail()%><br/>
Contact No:<%=supplier.getContactno()%><br/>
                  
               </p>
            </div>
          
         </div>
      </div>


                
            </section>
        </main>

        <!--========== MAIN JS ==========-->
        <script src="assets/js/main.js"></script>
    </body>
</html>