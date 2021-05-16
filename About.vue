<template>
  <div>
    <p>{{ lala }}</p>
    <br />
    <button v-on:click="reverseMessage">Change Message</button><br />
    <button v-on:click="resetGroceryList">Reset groceryList</button><br />
    <button v-on:click="addGrocery">Add grocery</button>
    <input v-model="groceryText" /><br />
    <button v-on:click="apiGetAllProducts">apiGetAllProducts</button><br />
    <button v-on:click="apiLogin">apiLogin</button><br />
    <button v-on:click="apiGetProductsByVendor">apiGetProductsByVendor</button
    ><br />
    <div>
      <ul>
        <li v-for="item in groceryList" v-bind:key="item.id">
          {{ item.text }}
        </li>
      </ul>
    </div>
    <table border="1">
      <tr v-for="item in products" v-bind:key="item.productId">
        <td>{{ item.productId }}</td>
        <td>{{ item.productName }}</td>
      </tr>
    </table>
  </div>
</template>
<script>
import ajax from "axios";
import Cookies from "js-cookie";
export default {
  data: function() {
    return {
      id: 0,
      lala: "Hello Vue.js!",
      groceryText: "",
      groceryList: [
        { id: 0, text: "Vegetables" },
        { id: 1, text: "Cheese" },
        { id: 2, text: "Whatever else humans are supposed to eat" }
      ],
      products: []
    };
  },
  methods: {
    reverseMessage: function() {
      this.lala = "Hello Despoina";
    },
    resetGroceryList: function() {
      this.groceryList = [];
      this.id = this.groceryList.length;
    },
    addGrocery: function() {
      this.id = this.groceryList.length + 1;

      if (this.groceryText != "") {
        this.groceryList.push({
          id: this.id,
          text: this.groceryText + " " + this.id
        });

        this.groceryText = "";
      } else alert("Please set Grocery Text");
    },
    apiGetAllProducts: function() {
      ajax.get("https://localhost:44308/api/Products/GetAllProducts").then(
        function(response) {
          console.log(Object.keys(response));
          console.log(response.data);
          // this.products = response.data;
        }.bind(this)
      );
    },
    apiLogin: function() {
      ajax({
        method: "post",
        url: "https://localhost:44308/api/Authenticate/login",
        data: {
          username: "Aris",
          password: "Aris$123$"
        }
      }).then(
        function(response) {
          console.log(Object.keys(response));
          Cookies.set("mp-auth", response.data.token);
          console.log(response.data.token);
          // this.products = response.data;
        }.bind(this)
      );
    },
    apiGetProductsByVendor: function() {
      var config = {
        headers: { Authorization: "Bearer " + Cookies.get("mp-auth") }
      };
      ajax
        .get("https://localhost:44308/api/Products/GetProductsByVendor", config)
        .then(
          function(response) {
            console.log(Object.keys(response));
            console.log(response.data);
            // this.products = response.data;
          }.bind(this)
        );
    }
  }
};
</script>
