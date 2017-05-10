// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require bootstrap
//= require bootstrap-sprockets

// -- ADDED ANGULAR --
//= require angular/angular
//= require angular-ui-router/release/angular-ui-router
// ---------------------

// -- ADDED ------------
//= require_self
// This makes app initialization/configuration code  is loaded before any files in assets/javascript folder.
// ---------------------

//= require_tree .


angular
  .module('seedAndSee', ['ui.router'])
  .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        component: 'homePage'
      })
      .state('gardenIndex', {
        url: '/users/:userId/garden',
        component: 'gardenIndex'
      })
      .state('gardenNew', {
        url: '/users/:userId/garden/new',
        component: 'gardenNew'
      })
      // WHERE PLANTS LIBRARY IS
      .state('plants', {
        url: '/plants',
        component: 'plantsIndex'
      })
      .state('plantShow', {
        url: '/plants/:id',
        component: 'plantShow'
      })
      // WHERE IT SHOWS ALL USERS + THIER POSTS
      .state('postIndex', { 
        url: '/posts',
        component: 'postsIndex'
      })
      // USER PROFILE + USER'S POSTS
      .state('userShow', {
        url: '/users/:id',
        component: 'userShow'
      })
      .state('postNew', {
      url: '/users/:userId/posts/new',
      component: 'postNew'
      })
      .state('postShow', {
        url: '/users/:userId/posts/:id',
        component: 'postShow'
      })
      .state('postEdit', {
      url: '/users/:userId/posts/:id/edit',
      component: 'postEdit'
      })

    // default fall back route
    $urlRouterProvider.otherwise('/');

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
  });