<template>
<v-container>
  <v-card>
    <div class="d-flex">
      <v-card-title><h3>Game Edit</h3></v-card-title>
      <v-spacer></v-spacer>
      <v-btn class="ma-4" @click.stop="players_dialog = true">Select Players</v-btn>
      <v-btn class="ma-4" @click.stop="meeting_dialog = true">Meeting Called</v-btn>
      <v-btn class="ma-4" @click.stop="winners_dialog = true">Select Winners</v-btn>
    </div>

    <v-card-text>
      <div class="d-flex">
        <v-combobox
          class="mx-2"
          v-model="form_data.session"
          :items="sessions"
          item-text="name"
          item-value="id"
          label="Session"
        ></v-combobox>

        <v-text-field
          class="mx-2"
          v-model="form_data.timestamp" 
          label="Timestamp"
          ></v-text-field>

        <v-select
          class="mx-2" 
          v-model="form_data.mod_id" 
          :items="mods"
          item-text="name"
          item-value="id"
          label="Mod"
          ></v-select>
      </div>
    </v-card-text>

    <div v-for="player in players" :key="player.id" class="player">
      <div class="pa-2">
        <GameEditPlayer :player="player"></GameEditPlayer>
      </div>
    </div>

  </v-card>

  <v-dialog v-model="winners_dialog" max-width="290">
    <GameEditSelectWinners />
  </v-dialog>

  <v-dialog v-model="meeting_dialog" max-width="600" persistent>
    <GameEditMeeting v-on:close="meeting_dialog = false" />
  </v-dialog>

  <v-dialog v-model="players_dialog" max-width="290">
    <GameEditSelectPlayers />
  </v-dialog>
</v-container>
</template>

<script>
import GameEditPlayer from "@/components/GameEdit/GameEditPlayer.vue";
import GameEditSelectWinners from "@/components/GameEdit/GameEditSelectWinners.vue";
import GameEditSelectPlayers from "@/components/GameEdit/GameEditSelectPlayers.vue";
import GameEditMeeting from "@/components/GameEdit/GameEditMeeting.vue";
import { format } from 'date-fns'

export default {
  name: 'GameList',
  components: {GameEditPlayer, GameEditSelectWinners, GameEditSelectPlayers, GameEditMeeting},

  data: () => ({
    winners_dialog: false,
    meeting_dialog: false,
    players_dialog: false,
    form_data: {
      session: "",
      timestamp: "",
      mod_id: null
    },

    players: [
      {id: 1, name: "Test Player"},
      {id: 2, name: "Test Player 2"},
      {id: 3, name: "Test Player 3"},
      {id: 4, name: "Test Player 4"},
      {id: 5, name: "Test Player 5"},
    ],
    mods: [
      {id: 1, name: "Among Us (Vanilla)"},
      {id: 2, name: "Among Us (TheOtherRoles)"},
      {id: 3, name: "Among Us (Better Crewlink)"},
      {id: 4, name: "Among Us (Town Of Us)"},
      {id: 5, name: "Suspects: Mystery Mansion (Vanilla)"},
    ],
    sessions: [
      {id: 1, name: "01/14"}
    ]
  }),
  methods: {
    formatDate: function (date, dateFormat) {
      return format(date, dateFormat)
    }
  }
}
</script>
