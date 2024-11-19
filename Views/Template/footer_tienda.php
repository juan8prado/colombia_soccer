	<?php 
		$catFotter = getCatFooter();
	 ?>
	<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-4 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Categorías
                </h4>
                <div class="content-scroll">
                    <?php if(count($catFotter) > 0){ ?>
                    <ul>
                        <?php foreach ($catFotter as $cat) { ?>
                        <li class="p-b-10">
                            <a href="<?= base_url() ?>/tienda/categoria/<?= $cat['idcategoria'].'/'.$cat['ruta'] ?>" class="stext-107 cl7 hov-cl1 trans-04">
                                <?= $cat['nombre'] ?>
                            </a>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Contacto
                </h4>
                <p class="stext-107 cl7 size-201">
                    <?= DIRECCION ?> <br>
                    Tel: <a class="linkFooter" href="tel:<?= TELEMPRESA ?>"><?= TELEMPRESA ?></a><br>
                    Email: <a class="linkFooter" href="mailto:<?= EMAIL_EMPRESA ?>"><?= EMAIL_EMPRESA ?></a>
                </p>
                <div class="p-t-27">
                    <a href="<?= FACEBOOK ?>" target="_blank" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="<?= INSTAGRAM ?>" target="_blank" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-instagram"></i>
                    </a>
                    <a href="https://wa.me/<?= WHATSAPP ?>" target="_blank" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Suscríbete
                </h4>
                <form id="frmSuscripcion" name="frmSuscripcion">
                    <div class="wrap-input1 w-full p-b-4">
                        <input class="input1 bg-none plh1 stext-107 cl7" type="text" id="nombreSuscripcion" name="nombreSuscripcion" placeholder="Nombre completo" required>
                        <div class="focus-input1 trans-04"></div>
                    </div>
                    <br>
                    <div class="wrap-input1 w-full p-b-4">
                        <input class="input1 bg-none plh1 stext-107 cl7" type="email" id="emailSuscripcion" name="emailSuscripcion" placeholder="email@example.com" required>
                        <div class="focus-input1 trans-04"></div>
                    </div>
                    <div class="p-t-18">
                        <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                            Suscribirme
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <div class="p-t-40">
            <p class="stext-107 cl6 txt-center">
                <?= NOMBRE_EMPESA; ?> | <?= WEB_EMPRESA; ?> | <a href="https://colorlib.com" target="_blank">Colorlib</a>
            </p>
        </div>
    </div>
</footer>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	<script>
	    const base_url = "<?= base_url(); ?>";
		const smony = "<?= SMONEY; ?>";
	</script>
<!--===============================================================================================-->	
	<script src="<?= media() ?>/tienda/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/bootstrap/js/popper.js"></script>
	<script src="<?= media() ?>/tienda/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= media() ?>/tienda/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/slick/slick.min.js"></script>
	<script src="<?= media() ?>/tienda/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/parallax100/parallax100.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/sweetalert/sweetalert.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= media();?>/js/fontawesome.js"></script>
	<script src="<?= media() ?>/tienda/js/main.js"></script>
	<script src="<?= media();?>/js/functions_admin.js"></script>
	<script src="<?= media() ?>/js/functions_login.js"></script>
	<script src="<?= media() ?>/tienda/js/functions.js"></script>

</body>


<style>
/* Estilo específico para la lista con scroll */
.content-scroll {
    max-height: 300px; /* Altura máxima para el contenido desplazable */
    overflow-y: auto; /* Habilita el scroll vertical */
    overflow-x: hidden; /* Evita el scroll horizontal */
    scrollbar-width: thin; /* Ancho del scroll en navegadores compatibles */
    scrollbar-color: #014640 #00635a; /* Colores del scroll en navegadores compatibles */
}

/* Personalización del scroll en Webkit (Chrome, Edge, Safari) */
.content-scroll::-webkit-scrollbar {
    width: 8px;
}

.content-scroll::-webkit-scrollbar-thumb {
    background-color: #888;
    border-radius: 4px;
}

.content-scroll::-webkit-scrollbar-thumb:hover {
    background-color: #555;
}

.content-scroll::-webkit-scrollbar-track {
    background: #f1f1f1;
}


</style>



</html>