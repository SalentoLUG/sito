function allinea_news() {

  news = document.getElementsByClassName("level2");

  // Aggiunte classi diverse alle news in base al fatto che sia la prima oppure
  // le sucessive
  news[0].classList.add("first-news");
  for (i=1; i<news.length; i++) {
    news[i].classList.add("col-sm-6");
    news[i].classList.add("news");
  }

  // Elimina la numerazione dei paragrafi
  num_header = document.getElementsByClassName("header-section-number");
  quantity = news.length + 1;
  for (i=0; i<quantity; i++) {
    num_header[i].innerHTML = "";
  }

  // Elimina il titolo della pagina
  level1 = document.getElementsByClassName("level1")[0];
  level1.children[0].innerHTML = ""
}

window.onload = allinea_news;
