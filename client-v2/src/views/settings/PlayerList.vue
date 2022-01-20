<template>
  <div>
    <ul>
      <li v-for="item in players" v-bind:key="item.id">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'PlayerList',

  data: () => ({
    loading: false,
    players: []
  }),
  
  created () {
    // fetch the data when the view is created and the data is
    // already being observed
    this.fetchData()
  },

  methods: {
    fetchData() {
      this.players = []
      this.loading = true

      fetch("http://localhost:3091/players")
        .then(response => response.json())
        .then(data => {
          this.loading = false
          this.players = data
        })
    }
  }
}
</script>
