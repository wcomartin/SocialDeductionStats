<template>
  <v-card>
    <v-card-title class="text-h5">
      Select Winners
    </v-card-title>

    <v-list-item-group
        v-model="winners"
        multiple
        active-class=""
      >
        <v-list-item v-for="player in players" :key="player.id">
          <template v-slot:default="{ active }">
            <v-list-item-action>
              <v-checkbox :input-value="active"></v-checkbox>
            </v-list-item-action>

            <v-list-item-content>
              <v-list-item-title>{{ player.name }}</v-list-item-title>
            </v-list-item-content>
          </template>
        </v-list-item>
    </v-list-item-group>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    winners: [],
    players: [
      {id: 1, name: "Test Player"},
      {id: 2, name: "Test Player 2"},
      {id: 3, name: "Test Player 3"},
      {id: 4, name: "Test Player 4"},
      {id: 5, name: "Test Player 5"},
    ],
  })
}
</script>