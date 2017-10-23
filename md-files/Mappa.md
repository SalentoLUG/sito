

# Introduzione

Abbiamo notato lo stupore di alcuni nuovi e vecchi membri del SaLUG!, di scoprire
all'interno del SaLUG! stesso, vicini di casa, compaesani, compagni di scuola, e
abbiamo tenuto presente le finalità stesse del SaLUG! cioé facilitare la possibilità
di incontro e condivisione di esperienza e conoscenza tra gli utenti di Software
Libero del Salento! Quindi, abbiamo avviato la lavorazione di questa Mappa Interattiva.
Ma in pratica che è?

Si tratta di un posto del sito nel quale chiunque può auto-segnalarsi, come utente
di software libero. Indicando nel contempo UNA zona/comune/frazione.
In modo da facilitare l'incontro tra utenti (il concetto base su cui verte il SaLUG! stesso)

Per ora, semplicemente una paginetta, come le altre, in cui chiunque può auto-segnalarsi,
ma non e' escluso che diventi qualcos'altro, vedi 'futuri sviluppi'.

<div id="map"></div>

<script type="text/javascript">

    var map = L.map('map').setView([40.353,18.171], 11);

    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '© <a href="http://osm.org/copyright">OpenStreetMap</a> contributors',
    maxZoom: 18
    }).addTo(map);

    var marker1 = L.marker([40.35266, 18.17760]).addTo(map);
    marker1.bindPopup("<b>sydro</b><br>Lecce");
    var marker1 = L.marker([40.36065, 18.15648]).addTo(map);
    marker1.bindPopup("<b>ripley</b><br>Lecce");
    var marker2 = L.marker([40.17303, 18.16437]).addTo(map);
    marker2.bindPopup("<b>donkey</b><br>Galatina");
    var marker3 = L.marker([40.2020692, 18.2919971]).addTo(map);
    marker3.bindPopup("<b>ilpianista</b><br>Martano");

</script>
