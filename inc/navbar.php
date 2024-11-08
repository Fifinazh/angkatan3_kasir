 <!-- NAVBAR START -->
 <nav class="navbar navbar-expand-lg shadow-sm sticky-top" style="background-color: #ADD8E6;">
     <div class="container-fluid">
         <button class="navbar-toggler" type="button"
             data-bs-toggle="collapse"
             data-bs-target="#navAltMarkup"
             aria-controls="navAltMarkup" aria-expanded="false"
             aria-label="Toogle Navigation">
             <span class="navbar-toggler-icon">

             </span>
         </button>
         <div class="collapse navbar-collapse"
             id="navAltMarkup">
             <div class="navbar-nav">
                 <a href="kasir.php" class="nav-link">Kasir</a>
                 <!-- <a href="ManageAccounts.php" class="nav-link">Manage Accounts</a>
                 <a href="#" class="nav-link">Manage Books</a> -->
             </div>
         </div>
         <h1 class="px-3" style="font-family: 'Righteous'">Welcome, <?php echo $_SESSION['NAMALENGKAPNYA']; ?> </h1>
         <a href="controller/logout.php" class="btn btn-danger btn-sm">Log-out</a>
 </nav>
 <!-- NAVBAR END -->