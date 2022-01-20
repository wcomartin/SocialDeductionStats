<template>
  <v-select x-small
            v-model="role"
            :items="roles"
            label="Negative Role"
            solo dense hide-details clearable
            class="pa-0 ma-0"></v-select>
</template>

<script>
export default {
  props: ['role'],
  data () {
    return {
      roles: [
        "item1",
        "item2"
      ]
    }
  }
}
</script>
