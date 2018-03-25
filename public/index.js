/* global Vue, VueRouter, axios */

var ProfilePage = {
  template: "#profile-page",
  data: function() {
    return {
      user: {},
      characters: []
    };
  },
  created: function() {
    axios.get("/character_sheets").then(
      function(response) {
        this.characters = response.data;
      }.bind(this)
    );
    axios
      .get("/users")
      .then(
        function(response) {
          this.user = response.data;
        }.bind(this)
      )
      .catch(function(errorr) {
        router.push("/login");
      });
  },
  methods: {},
  computed: {}
};

var CharacterShowPage = {
  template: "#character-show-page",
  data: function() {
    return {
      character: {
        user: {},
        name: "",
        klass: {},
        background: {},
        race: {},
        alignment: "",
        saves: [],
        features_and_traits: [],
        skills: [{ name: "", ability: "", bonus: 0 }]
      }
    };
  },
  created: function() {
    axios.get("/character_sheets/" + this.$route.params.id).then(
      function(response) {
        this.character = response.data;
      }.bind(this)
    );
  },
  methods: {
    toggleFeatureShow: function(feature) {
      feature.show = !feature.show;
    }
  },
  computed: {}
};

var CharacterNewPage = {
  template: "#new-character-page",
  data: function() {
    return {
      errors: [],
      strength: 10,
      dexterity: 10,
      constitution: 10,
      intelligence: 10,
      wisdom: 10,
      charisma: 10,
      race: 0,
      subrace: null,
      background: 0,
      klass: 0,
      level: 1,
      alignment: "",
      personality: "",
      ideals: "",
      bonds: "",
      flaws: "",
      money: "",
      name: ""
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        background_id: this.background,
        strength: this.strength,
        dexterity: this.dexterity,
        constitution: this.constitution,
        intelligence: this.intelligence,
        wisdom: this.wisdom,
        charisma: this.charisma,
        race_id: this.race,
        level: this.level,
        klass_id: this.klass,
        alignment: this.alignment,
        personality: this.personality,
        ideals: this.ideals,
        bonds: this.bonds,
        flaws: this.flaws,
        money: this.money
      };
      axios
        .post("/character_sheets", params)
        .then(function(response) {
          router.push("/character_sheets/" + response.data.id + "/new_skills");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var CharacterNewSkillsPage = {
  template: "#new-skills-page",
  data: function() {
    return {
      character: {
        name: "",
        klass: {},
        background: {},
        race: {},
        alignment: ""
      },
      chosenSkills: {
        1: false,
        2: false,
        3: false,
        4: false,
        5: false,
        6: false,
        7: false,
        8: false,
        9: false,
        10: false,
        11: false,
        12: false,
        13: false,
        14: false,
        15: false,
        16: false,
        17: false,
        18: false
      },
      errors: []
    };
  },
  created: function() {
    axios.get("/character_sheets/" + this.$route.params.id).then(
      function(response) {
        this.character = response.data;
        this.character.background.skills.forEach(
          function(skill) {
            this.chosenSkills[skill.id] = true;
          }.bind(this)
        );
      }.bind(this)
    );
  },
  methods: {
    submit: function() {
      for (var i = 1; i < 18; i++) {
        let params = {
          skill_id: i,
          character_page_id: this.character.id,
          proficient: false
        };
        if (this.chosenSkills.i === true) {
          params.proficient = true;
        }
        axios.post("/skill_tests", params);
      }
      router.push("/character_sheets/" + this.character.id);
    }
  }
};

var CharacterUpdatePage = {
  template: "#character-update-page",
  data: function() {
    return {
      character: {
        name: "",
        strength: 10,
        dexterity: 10,
        constitution: 10,
        intelligence: 10,
        wisdom: 10,
        charisma: 10,
        klass: {},
        background: {},
        race: {},
        alignment: "",
        level: 1,
        hit_points: 6,
        armor_class: 10,
        money: 0,
        notes: "",
        inventory: "",
        personality: "",
        ideals: "",
        bonds: "",
        flaws: ""
      }
    };
  },
  created: function() {
    axios.get("/character_sheets/" + this.$route.params.id).then(
      function(response) {
        this.character = response.data;
      }.bind(this)
    );
  },
  methods: {
    submit: function() {
      var params = {
        name: this.character.name,
        strength: this.character.strength,
        dexterity: this.character.dexterity,
        constitution: this.character.constitution,
        intelligence: this.character.intelligence,
        wisdom: this.character.wisdom,
        charisma: this.character.charisma,
        level: this.character.level,
        alignment: this.character.alignment,
        personality: this.character.personality,
        ideals: this.character.ideals,
        bonds: this.character.bonds,
        flaws: this.character.flaws,
        money: this.character.money
      };
      axios
        .patch("/character_sheets", params)
        .then(function(response) {
          router.push("/character_sheets/" + response.data.id);
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

// Authorization Components

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/login");
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: ProfilePage },
    { path: "/character_sheets/new", component: CharacterNewPage },
    { path: "/character_sheets/:id", component: CharacterShowPage },
    {
      path: "/character_sheets/:id/new_skills",
      component: CharacterNewSkillsPage
    },
    { path: "/character_sheets/:id/edit", component: CharacterUpdatePage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});
