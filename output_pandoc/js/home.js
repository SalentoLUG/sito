function allinea_news() {

  news = document.getElementsByClassName("level2");

  news[0].classList.add("first-news");
  for (i=1; i<news.length; i++) {
    news[i].classList.add("col-sm-6");
    news[i].classList.add("news");
  }

  num_header = document.getElementsByClassName("header-section-number");
  quantity = news.length + 1;
  for (i=0; i<quantity; i++) {
    num_header[i].innerHTML = "";
  }
}

window.onload = allinea_news;
