<template>
  <div class="columns section-restaurants">
    <div class="column left-form">
      <h1 class="title">Estamos para ti</h1>

      <!-- Type Buttons -->
      <div class="columns is-mobile restaurants-types">
        <div class="column is-7" 
          :class="{'is-active': (restaurants_search_type == 'takeaway')? true: false}"
          @click="loadRestaurants('takeaway') "
        >
          <p>            
            Para llevar
          </p>
        </div>
        <div class="column" 
          :class="{'is-active': (restaurants_search_type == 'delivery')? true: false}"
          @click="loadRestaurants('delivery') "
        >
          <p>Domicilio</p>
        </div>
      </div>

      <!-- Search Input -->
      <article class="search-container media">
        <figure class="media-left">
          <p class="image is-32x32">
            
          </p>
        </figure>
        <div class="media-content">
          <div class="content">
            <input type="text" v-model="restaurants_search_text" placeholder="Buscar nombre o dirección" class="map_search_input">
          </div>
        </div>
      </article>

      <!-- Search Results -->
      <div class="search-results">

        <template v-if="restaurants.length > 0">
          <template v-for="restaurant in restaurants">
            <!-- Card Item -->
            <div class="card is-selected" v-bind:key="restaurant.name+'-'+restaurant.id">
              <div class="card-content">
                <label class="title">
                  {{ restaurant.name }}
                </label>
                <p class="address">
                  Abierto de {{ restaurant.opening_time }} - {{ restaurant.closing_time }}<br>
                  {{ restaurant.address }}
                </p>
              </div>        
            </div>
            <!-- /Card Item -->
          </template>
        </template>
        <template v-else>
          <div class="no-address"></div>
          <h1 class="no-address-title">¡No hemos encontrado lo que buscas!</h1>
        </template>        
      </div>      
    </div>
    <div class="column right-map is-7">
      <!-- PENDIENTE MAPA DE GOOGLE -->
    </div>
  </div>
</template>
<script>
import axios from 'Axios';

export default {
  data: function () {
     return {
       restaurants: [],
       restaurants_backup: [],
       restaurants_search_type: 'takeaway', // takeaway || delivery
       restaurants_search_text: '',
    }
  },
  methods: {
    loadRestaurants(type) {
      let _this = this;
      this.restaurants_search_type = type;

      axios.get('wp-admin/admin-ajax.php?action=get_locations&type='+type)
        .then(response => {
          if (response.status == 200) {
            _this.restaurants = response.data;
            _this.restaurants_backup = response.data;
          }
        });
    },
  },
  created() {
    // Cargar restaurantes
    this.loadRestaurants(this.restaurants_search_type);
  },
  watch: {
    restaurants_search_text(old_value, new_value) {
      if (new_value == "" || old_value == "") {
        this.restaurants = this.restaurants_backup;
      } else {
        this.restaurants = this.restaurants.filter(function (item) {
          return (
            item.name.toLowerCase().replace(/\s+/g, '').search(new_value.toLowerCase().replace(/\s+/g, '')) !== -1 ||
            item.address.toLowerCase().replace(/\s+/g, '').search(new_value.toLowerCase().replace(/\s+/g, '')) !== -1
          );          
        });
      }      
    }
  }
}
</script>

<style>
</style>