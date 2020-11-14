import Vue from 'vue';
import axios from 'Axios';

const app = new Vue({
   el: '#app',
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
      }
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
});