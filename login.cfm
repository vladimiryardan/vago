<cfinclude template="header.cfm" >
 
<!-- forms -->
<link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">

<div class="clearfix margin_top10"></div>

<div class="page_title2">
<div class="container">
	
    <h1>Login Form</h1>
    <div class="pagenation">&nbsp;<a href="index.html">Home</a> <i>/</i> <a href="#">Features</a> <i>/</i> Login Form</div>
     
</div>
</div><!-- end page title --> 

<div class="clearfix"></div>

<div class="content_fullwidth less2">
<div class="container">

	<div class="login_form">		
        <form id="sky-form" class="sky-form">
            <header>Login form</header>
            
            <fieldset>					
                <section>
                    <div class="row">
                        <label class="label col col-4">E-mail</label>
                        <div class="col col-8">
                            <label class="input">
                                <i class="icon-append icon-user"></i>
                                <input type="email" name="email">
                            </label>
                        </div>
                    </div>
                </section>
                
                <section>
                    <div class="row">
                        <label class="label col col-4">Password</label>
                        <div class="col col-8">
                            <label class="input">
                                <i class="icon-append icon-lock"></i>
                                <input type="password" name="password">
                            </label>
                            <div class="note"><a href="#sky-form2" class="modal-opener">Forgot password?</a></div>
                        </div>
                    </div>
                </section>
                
                <section>
                    <div class="row">
                        <div class="col col-4"></div>
                        <div class="col col-8">
                            <label class="checkbox"><input type="checkbox" name="remember" checked><i></i>Keep me logged in</label>
                        </div>
                    </div>
                </section>
            </fieldset>
            <footer>
                <div class="fright">
                <a href="Register.cfm" class="button button-secondary">Register</a>
                <button type="submit" class="button">Log in</button>
                </div>
                
            </footer>
        </form>			
	</div>
        
    <form action="demo-recovery.php" id="sky-form2" class="sky-form sky-form-modal">
        <header>Password recovery</header>
        
        <fieldset>					
            <section>
                <label class="label">E-mail</label>
                <label class="input">
                    <i class="icon-append icon-user"></i>
                    <input type="email" name="email" id="email">
                </label>
            </section>
        </fieldset>
        
        <footer>
            <button type="submit" name="submit" class="button">Submit</button>
            <a href="#" class="button button-secondary modal-closer">Close</a>
        </footer>
            
        <div class="message">
            <i class="icon-ok"></i>
            <p>Your request successfully sent!<br><a href="#" class="modal-closer">Close window</a></p>
        </div>
    </form>
    

</div>
</div><!-- end content area -->


<cfinclude template="footer.cfm" >