<template>
  <v-card>
    <v-card-title class="text-h5">
      Meeting
    </v-card-title>

    <v-list>
      <div v-for="(player, index) in players" :key="player.id">
        <v-list-item >
          <v-list-item-content>
            <v-list-item-title>{{ player.name }}</v-list-item-title>
          </v-list-item-content>

          <v-list-item-action>
            <div class="d-flex align-center">
              <v-btn icon>
                <v-icon>mdi-minus</v-icon>
              </v-btn>

              <span>0</span>

              <v-btn icon>
                <v-icon>mdi-plus</v-icon>
              </v-btn>
            </div>
          </v-list-item-action>

          <v-list-item-action>
            <v-btn-toggle v-model="player.death" dense>
              <v-btn value="stabbed">Stabbed</v-btn>
              <v-btn value="ejected">Ejected</v-btn>
            </v-btn-toggle>
          </v-list-item-action>
        </v-list-item>

        <v-divider
            v-if="index < players.length - 1"
            :key="index"
          ></v-divider>
      </div>
    </v-list>

    <v-card-actions class="d-flex justify-end">
      <v-btn
        color="primary"
        @click="$emit('close')"
      >
        Finish Meeting
      </v-btn>
    </v-card-actions>

  </v-card>
</template>

<script>
export default {
  data: () => ({
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