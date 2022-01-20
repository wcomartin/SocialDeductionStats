<template>
<v-container>
  <v-card>
    <div class="d-flex">
      <v-card-title><h3>Game List</h3></v-card-title>
      <v-spacer></v-spacer>
      <v-btn :to="{ name: 'GameEdit', params: {id: 'new'}}" class="ma-4">Start New Game</v-btn>
    </div>

    <v-data-table
      :headers="headers"
      :items="games"
      :items-per-page="5"
      @click:row="gotoGame">
        <template v-slot:item.timestamp="{ item }">
          {{ formatDate(item.timestamp, "HH:mm") }}
        </template>
    </v-data-table>
  </v-card>
</v-container>
</template>

<script>
import { format } from 'date-fns'

export default {
  name: 'GameList',

  data: () => ({
    headers: [
      {
        text: 'Session',
        align: 'start',
        sortable: false,
        value: 'session',
      },
      { text: 'Time', value: 'timestamp' },
      { text: 'Mod', value: 'mod' },
      { text: 'Winning Team', value: 'winningTeam' },
      { text: 'Meeting Count', value: 'meetingsCount' },
      { text: 'State', value: 'state' },
    ],
    games: [
      {id: 1, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "Vanilla", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 2, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "Vanilla", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 3, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "Vanilla", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 4, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "TheOtherRoles", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 5, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "TheOtherRoles", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 6, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "TheOtherRoles", gamemode: "Standard", winningTeam: "Crewmate", meetingsCount: 4, note: ""},
      {id: 7, session: "01/14/20", timestamp: new Date(), state: "Complete", mod: "Suspects: Mystery Mansion", gamemode: "Standard", winningTeam: "Guests", meetingsCount: 4, note: ""},
    ]
  }),
  methods: {
    formatDate: function (date, dateFormat) {
      return format(date, dateFormat)
    },
    gotoGame: function (item) {
      this.$router.push({ name: 'GameEdit', params: { id: item.id } })
    }
  }
}
</script>
