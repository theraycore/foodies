<template>
  <div>
    <!-- About Us Section -->
    <about-us></about-us>

    <!-- Restaurants Section -->
    <restaurants></restaurants>

    <!-- Testimonials Section -->
    <testimonials></testimonials>

    <!-- Contact Us Section -->
    <contact-us></contact-us>

    <!-- Mobile App Section -->
    <mobile-app></mobile-app>
  </div>
</template>

<script>
import AboutUs from './landing/AboutUs.vue';
import Restaurants from './landing/Restaurants.vue';
import Testimonials from './landing/Testimonials.vue';
import ContactUs from './landing/ContactUs.vue';
import MobileApp from './landing/MobileApp.vue';

export default {
  components: {
    AboutUs,
    Restaurants,
    Testimonials,
    ContactUs,
    MobileApp
  }
}
</script>

<style>

</style>