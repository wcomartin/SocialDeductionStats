import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'

import GameList from '../views/sessions/GameList.vue'
import GameEdit from '../views/sessions/GameEdit.vue'
import PlayerList from '../views/settings/PlayerList.vue'
import ModList from '../views/settings/ModList.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/gamelist',
    name: 'GameList',
    component: GameList
  },
  {
    path: '/gameedit/:id',
    name: 'GameEdit',
    component: GameEdit
  },
  {
    path: '/playerlist',
    name: 'PlayerList',
    component: PlayerList
  },
  {
    path: '/modlist',
    name: 'ModList',
    component: ModList
  }
]

Vue.use(VueRouter)

const router = new VueRouter({
  routes
})

export default router
