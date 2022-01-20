<template>
  <v-app>
    <v-app-bar app>
      <v-app-bar-title><router-link to="/" style="color: inherit; text-decoration: inherit">Social Deduction Stats</router-link></v-app-bar-title>

      <v-spacer></v-spacer>

      <v-btn to="/gamelist" class="mr-5 ml-5"><v-icon left>mdi-calendar</v-icon> Games</v-btn>

      <v-divider inset vertical></v-divider>

      <v-btn to="/playerlist" class="ml-5 mr-3">
        <v-icon left>mdi-account-cog</v-icon> Players
      </v-btn>
      <v-btn to="/modlist" class="mr-5">
        <v-icon left>mdi-cog-outline</v-icon> Game Settings
      </v-btn>
    </v-app-bar>
    <v-main>
      <v-container fluid>
        <router-view/>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
export default {
  name: 'App',

  components: {
  },

  data: () => ({
    //
  }),
}
</script>
