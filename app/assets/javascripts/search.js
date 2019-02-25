document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "name",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "games",
        header: "<strong>Games</strong>",
      },
      {
        listLocation: "studios",
        header: "<strong>Studios</strong>",
      },
      {
        listLocation: "users",
        header: "<strong>Users</strong>",
      },
      {
        listLocation: "news",
        header: "<strong>News</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        $input.val("")
        Turbolinks.visit(url)
      }
    }
  }

  $("#srch").easyAutocomplete(options)
});
