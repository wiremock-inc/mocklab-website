
    const instantsearch = require('instantsearch.js');

    var search = instantsearch({
      appId: 'RBMCZSXJXZ',
    apiKey: '7643404dd2dfa0ff59c0419ebf08d4e9',
    indexName: 'docs',

   });

   search.addWidget(instantsearch.widgets.searchBox({
    container: '#search-input'
  })
);

search.addWidget(
  instantsearch.widgets.hits({
    container: '#hits',
    hitsPerPage: 10,
    templates: {
      item: document.getElementById('hit-template').innerHTML,
      empty: "We didn't find any results for the search <em>\"{{query}}\"</em>"
    }
  })
);

   search.start();
