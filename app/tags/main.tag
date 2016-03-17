<main-template>
  <div class="page-header">
    <h1>Example Counter <small>riotjs + electron + bootstrap</small></h1>
  </div>
  <div class="container">
    <display></display>
  </div>
  <style scoped>
    h1 {
      text-align: center;
      text-transform: uppercase;
    }
  </style>
</main-template>

<display>
  <div class="row">
    <div class="col-md-4 col-md-offset-4 col-xs-4 col-xs-offset-4 center">
      <h1>{counter}</h1>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-md-offset-4 col-xs-4 col-xs-offset-4 center">
      <div class="btn-group" role="group" aria-label="...">
        <button type="button" class="btn btn-default" name="remone">-</button>
        <button type="button" class="btn btn-default" name="addone">+</button>
      </div>
    </div>
  </div>

  <style scoped>
    .center {
      text-align: center;
    }
  </style>
  <script>
    var self = this;
    self.counter = settings.get()['counter'] || 0;
    
    this.on('mount', function() {
      //console.log('mount', settings);
    });
    this.addone.addEventListener("click", function() {
      self.counter += 1;
      settings.set('counter', self.counter);
      self.update();
    });
    this.remone.addEventListener("click", function() {
      self.counter -= 1;
      settings.set('counter', self.counter);
      self.update();
    });
  </script>
</display>
