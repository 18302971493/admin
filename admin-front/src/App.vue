<template>
  <div id="main" class="app-main">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
  html,body{
    width: 100%;
    height: 100%;
    background: #f0f0f0;
    overflow: hidden;
  }
  .app-main{
    width: 100%;
    height: 100%;
  }
</style>
