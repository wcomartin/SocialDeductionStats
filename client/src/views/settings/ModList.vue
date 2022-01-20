<template>
  <div>
    <ul>
      <li v-for="item in mods" v-bind:key="item.id">
        <h2>{{ item.name }}</h2>
        <ul>
          <li v-for="role in item.roles" v-bind:key="role.id">
            <p>{{ role.name }} ({{ role.team_name }})</p>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'ModList',

  data: () => ({
    loading: false,
    mods: []
  }),
  
  created () {
    // fetch the data when the view is created and the data is
    // already being observed
    this.fetchData()
  },

  methods: {
    fetchData() {
      this.mods = []
      this.loading = true

      fetch("http://localhost:3091/mods")
        .then(response => response.json())
        .then(data => {
          this.loading = false
          this.mods = data
        })
    }
  }
}
</script>
