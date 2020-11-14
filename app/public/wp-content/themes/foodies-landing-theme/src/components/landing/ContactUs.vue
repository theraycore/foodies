<template>
  <div class="section-contact-us" id="section-contact-us">

    <template v-if="!contact_us_submited">
      <!-- titles -->
      <h1 class="contact-title">Cuentanos tu experiencia</h1>
      <p class="contact-paragraph">Don't miss out on our great offers & Receive deals from all our top restaurants via e-mail. </p>

      <!-- Form -->
      <form class="contact-form" method="post" v-on:submit.prevent="sendContactUsForm">
        <div class="columns">
          <div class="column">
            <!-- Name y Last Name -->
            <div class="field is-active">
              <label class="label" for="txt_name">Nombre y Apellido</label>
              <div class="control">
                <input class="input" id="txt_name" v-model="txt_name" type="text" placeholder="John Doe">
              </div>
            </div>

            <!-- Email -->
            <div class="field">
              <label class="label">Correo Electronico</label>
              <div class="control">
                <input class="input" id="txt_email" v-model="txt_email" type="text" placeholder="j.doe@correo.com">
              </div>
            </div>
          </div>
          <div class="column">
            <!-- Message -->
            <div class="field">
              <label class="label">Mensaje</label>
              <div class="control">       
                <textarea class="textarea" id="txt_message" v-model="txt_message"  rows="4" placeholder="El día de ahora mi experiencia fue..."></textarea>
              </div>
            </div>
            
            <div class="submit-container">
              <button class="button" type="submit">Enviar comentarios</button>
            </div>
          </div>
        </div>
      </form>
    </template>
    <template v-else>
      <div class="email-sended">
        <div class="email-img"></div>
        <h1 class="email-title">Gracias por tus comentarios</h1>
        <p>Don't miss out on our great offers & Receive deals from all our
 top restaurants via e-mail.</p>
      </div>
      
    </template>
    
  </div>
</template>

<script>
import axios from 'Axios';

export default {
  data: function () {
    return {
      contact_us_submited: false,
      txt_name: '',
      txt_email: '',
      txt_message: '',
    }
  },
  methods: {
    sendContactUsForm () {
        this.contact_us_submited = true;

        var data = new FormData();

        data.append('txt_name', this.txt_name);
        data.append('txt_email', this.txt_email);
        data.append('txt_message', this.txt_message);

        axios({
          method: 'post',
          url: 'wp-admin/admin-ajax.php?action=post_messages',
          data
        })
          .then(function (result) {            
          });        
    }
  },
}
</script>

<style>
</style>