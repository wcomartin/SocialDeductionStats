<template>
  <div>
    <v-row dense class="align-center">
      <v-col cols="2">
        <h3>{{ player.name }}</h3>
      </v-col>

      <v-col>
        <v-btn-toggle v-model="player.team" mandatory dense>
          <v-btn value="positive">Positive</v-btn>
          <v-btn value="negative">Negative</v-btn>
          <v-btn value="neutral">Neutral</v-btn>
        </v-btn-toggle>
      </v-col>

      <v-col v-if="player.team === 'positive'">
        <PositiveRoleSelect :role="player.positiveRole"></PositiveRoleSelect>
      </v-col>

      <v-col v-if="player.team === 'negative'">
        <NegativeRoleSelect :role="player.negativeRole"></NegativeRoleSelect>
      </v-col>

      <v-col v-if="player.team === 'neutral'">
        <NeutralRoleSelect :role="player.neutralRole"></NeutralRoleSelect>
      </v-col>

      <v-col>
        <ModifierRoleSelect :role="player.modifierRole"></ModifierRoleSelect>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import PositiveRoleSelect from "@/components/RoleSelect/PositiveRoleSelect";
import NegativeRoleSelect from "@/components/RoleSelect/NegativeRoleSelect";
import NeutralRoleSelect from "@/components/RoleSelect/NeutralRoleSelect";
import ModifierRoleSelect from "@/components/RoleSelect/ModifierRoleSelect";
export default {
  components: {ModifierRoleSelect, NeutralRoleSelect, PositiveRoleSelect, NegativeRoleSelect},
  props: ['player'],
  data () {
    return {
      roles: ["item1", "item2"]
    }
  }
}
</script>
