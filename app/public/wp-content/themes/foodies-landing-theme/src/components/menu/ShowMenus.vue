<template>
  <div class="section">
    <div class="columns is-multiline menus-section">    
      <template v-for="menu in menus">
        <div class="column is-one-quarter" v-bind:key="menu.name">
          <div class="card">
            <div class="card-image">
              <figure class="image is-4by3">
                <img :src="menu.image" alt="Placeholder image">
              </figure>
            </div>
            <div class="card-content">
              <div class="media">
                <div class="media-left">
                  <figure class="image is-48x48">
                    <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
                  </figure>
                </div>
                <div class="media-content">
                  <p class="title is-4">{{ menu.name }}</p>                
                </div>
              </div>

              <div class="content">
                {{ menu.description }}
                <br>
                <button>{{ menu.price }}</button>
              </div>
            </div>
          </div>
        </div>
      </template>   
    </div>
  </div>
</template>

<script>
import axios from 'Axios';

export default {
  data: function () {
    return {
      menus: []
    }
  },
  mounted() {
    let _this = this;    

    axios.get('http://'+window.location.host+'/wp-admin/admin-ajax.php?action=get_menus')
        .then(response => {          
          if (response.status == 200) {            
            _this.menus = response.data;            
          }          
        });
  }
  
}
</script>

<style>

</style>