---
layout: index
title: Home
permalink: "/"
headerimage: "/uploads/scott-van-daalen-usalndok2m4-unsplash.jpg"

---
<div id="service">
    <div class="container">
        <div class="row centered">
            <div class="col-md-4">
                <i class="far fa-clock"></i>
                <span class="sr-only">An image of a watch</span>
                <h4>Öffnungszeiten</h4>
                <p>
                    {% for line in site.businesshours.first.lines %}
                        {{ line }} <br>
                    {% endfor %}
                </p>
            </div>
             <div class="col-md-4">
            	<i class="fas fa-phone"></i>
                <span class="sr-only">An image of a trophy</span>
                <h4>Erreichbarkeit</h4>
                <p>
                    {% for line in site.contact.first.lines %}
                        {{ line }} <br>
                    {% endfor %}
                </p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-home"></i>
                <span class="sr-only">An image of a house</span>
                <h4>Adresse</h4>
                <p>
                    {% for line in site.address.first.lines %}
                        {{ line }} <br>
                    {% endfor %}
                </p>
            </div>
        </div>
    </div><!--/container -->
</div><!--/service -->

{% include service.html title="Leistungen" limit=5 %}