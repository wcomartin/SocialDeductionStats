import { createMachine } from 'xstate';

createMachine({
  id: "GameState",
  initial: "idle",
  states: {
    idle: {
      on: {
        START: "playing"
      }
    },
    playing: {
      on: {
        SESSION_SELECT: {
          actions: "set_session"
        },
        PLAYER_ROLE_SELECT: { actions: "set_player_role" },
        PLAYER_SECONDARY_ROLE_SELECT: { actions: "set_player_role" },
        MEETING_CALLED: "meeting"
      }
    },
    meeting: {
      on: {
        PLAYER_STABBED: "",
        PLAYER_EJECTED: "",
        VOTES_CAST: "playing",
        TEAM_WIN: "",
        PLAYER_WIN: "",
        GAME_OVER: "complete"
      }
    },
    complete: {
      on: {
        RESET: "idle"
      }
    }
  },
  actions: {
    // action implementations
    set_session: (context, event) => {
      console.log(context, event);
    },
    set_player_role: (context, event) => {
      console.log(context, event);
    },
  }
})