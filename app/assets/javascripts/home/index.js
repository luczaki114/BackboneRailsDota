var app = app || {};
app.blueprints = app.blueprints || {};
app.active = app.active || {};

app.blueprints.model = Backbone.Model.extend({
  initialize: function () {
    console.log('model init');
  }
});

app.blueprints.collection = Backbone.Collection.extend({
  url: '/api/heroes',
  model: app.blueprints.model,
  initialize: function () {
    this.fetch();
    console.log('collection init');
    $('.test').append('<li> hello </li>')
  }
})

app.blueprints.modelView = Backbone.View.extend({
  initialize: function() {
    console.log('modelView init');
    // every modelView should have a model
    //this.model
    this.template = _.template($('#heroes-template').html());
    this.render();
  },
  render: function() {
    var data = this.model.attributes;
    this.$el.append(this.template(data));
  }
});

app.blueprints.collectionView = Backbone.View.extend({
  initialize: function() {
    var that = this;
    // every collectionView should have a collection
    this.collection.on('sync', function() {
      that.render();
    });
    // retrieve data from my API 'all get' route
    this.collection.fetch();
    this.$el.html(''); // empty out any content inside of my $el

  },
  render: function() {
    console.log('rendering collectionView');
    var collection = this.collection.models;
    console.log(collection);
    for (var model in collection) {
      console.log(collection[model].attributes);
      // memory purposes
      new app.blueprints.modelView({
        el: $('#heroes-list'),
        model: collection[model]
      });
    }
  }
});


$(document).ready(function () {
  app.active.heroes = new app.blueprints.collection;

  app.active.collectionView = new app.blueprints.collectionView({
     collection: app.active.heroes,
     el: $('#heroes-list')
   });

  app.active.collectionView.render();

});
