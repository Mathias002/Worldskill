<?php
    require 'header.php';
?>
<br>
<br>
<br>
<body>
    <main style="padding-bottom: 7rem;">

        <div class="categ">
            <a style="text-decoration: none; color: gray;" href="#" id="tous">Tous</a>
            <a style="text-decoration: none; color: gray;" href="#" id="Mobile">Mobile</a>
            <a style="text-decoration: none; color: gray;" href="#" id="Web">Web</a>
            <a style="text-decoration: none; color: gray;" href="#" id="Interaction">Interaction</a>
        </div>

        <br>
        

    <div class="container" id="container_projet">

        <div class="row">
                <?php 
                require "../PHP/connexion.php" ;
                $sql=$connection->query("SELECT categorie.nomCateg, nomProjet,YEAR(dateProjet) AS date, imgProjet FROM projet, categorie, contient WHERE projet.idProjet = contient.idProjet AND contient.idCateg = categorie.idCateg AND categorie.idCateg = 1") ;
                
                $ligne = $sql->fetchall();

                foreach($ligne as $value){
                    
                ?>
                <?php 
                    ?>
                    <div class="col-4">
                        <div class="card" style="width: fit-content;">
                                <?php   
                                    echo '<img class="card-img-top" src="'.$value['imgProjet'].'" alt="image projet 1">' ;
                                ?>
                            <div class="card-body">
                                <p class="card-text">
                                    <?php  
                                    echo $value['nomCateg'] ;
                                    ?>
                                </p>
                                <div class="row">
                                    <div class="col-9">
                                        <h5 class="card-title">
                                            <?php    
                                                    echo $value['nomProjet'] ; 
                                                ?>
                                        </h5>
                                    </div>

                                    <div class="col-3">
                                        <?php    
                                            echo $value['date'] ; 
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                <?php
                }
            ?>
            </div>
        </div>

        <div class="about">

            <div class="image_about">
                    <img src="..\assets\images\undraw_Designer_by46.svg" alt="">
            </div>

            <div class="titre">
                    <p class="a_propos">A PROPOS...</p>
                    <p class="qui_suis_je">QUI SUIS-JE ?</p>
                
                    <p class="text_about" >Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa inventore, velit ratione neque obcaecati maxime esse voluptatibus dolor dolore eius, numquam ullam. Cum numquam, tempore rerum ipsum quae nemo vel. Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, molestias? Veritatis, asperiores. Dolorum aliquid corporis in obcaecati autem sed iste quia inventore eveniet? Laborum, incidunt? Blanditiis recusandae tenetur distinctio ut.</p>
                <br>
                <div class="contact">
                    <button type="button" class="btn btn-dark rounded-pill" style="width: 125px;">Contact</button>
                </div>
            </div>
            
        </div>

        <br>
        <br>
        <br>

            <div class="avis">
                <div class="text_avis">
                    <p class="text_avis2">
                        lore Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi obcaecati fugit a voluptate repudiandae facilis ipsum sint, officiis, reiciendis aliquid, nemo non accusantium! Fugiat praesentium neque quibusdam eligendi, rerum amet.
                    </p>
                </div>

                <div class="avis_pers">
                    <div class="pers_avis">
                        <img class="pp" src="..\assets\images\lena.jpg" alt="">
                    </div>
                    <div class="info">
                        <p class="name">
                            Lena M.Brooks
                        </p>
                        <p class="poste">
                            Marketing House
                        </p>
                    </div>
                    <div class="etoiles">

                    </div>
                </div>
            </div>
        </div>

        <br>
        <br>
        <br>

        <div class="entete">
                <p class="titre_entete">MON BLOG</p>
                <p class="text_entete">Mes avis sur les dernières tendances du Web</p>
            </div>

    <div class="container" id="container_article">
        <div class="row">
            <?php 
            require "../PHP/connexion.php" ;
            $sql=$connection->query("SELECT * FROM `article` WHERE 1 ORDER BY dateArticle DESC ") ;
            
            $ligne = $sql->fetchall();

            foreach($ligne as $value){
                
            ?>
                <div class="col-4">
                    <div class="card" style="width: fit-content;">
                        <div class="card-header text-bg-dark" style="width: fit-content;" >
                            <?php    
                                echo $value['dateArticle'] ; 
                            ?>    
                        </div>
                            
                            <?php   
                                echo '<img class="card-img-top" src="'.$value['imgArticle'].'" alt="image projet 1">' ;
                            ?>
                        
                        <div class="card-body">
                            <h5 class="card-title">
                                <?php  
                                echo $value['titreArticle'] ;
                                ?>
                            </h5>

                            <p class="card-text">
                                <?php    
                                    echo $value['descArticle'] ; 
                                ?>
                            </p>

                            <div class="lire">
                                <button type="button" class="btn btn-dark rounded-pill" style="width: 125px;">Lire</button>
                            </div>
                        </div>
                    </div>
                </div>      
            <?php
            }
            ?>
        </div>
    </div>
</main>

<?php
    require "footer.php" ;
?>

</body>
</html>  