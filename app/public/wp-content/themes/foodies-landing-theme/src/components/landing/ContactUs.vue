<template>
  <div class="section-contact-us">
    <!-- titles -->
    <h1 class="contact-title">Cuentanos tu experiencia</h1>
    <p class="contact-paragraph">Don't miss out on our great offers & Receive deals from all our top restaurants via e-mail. </p>

    <!-- Form -->
    <form class="contact-form" v-on:submit.prevent="sendContactUsForm">
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
  </div>
</template>

<script>
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
        console.log('Submit...');
    }
  },
}
</script>

<style>

</style>