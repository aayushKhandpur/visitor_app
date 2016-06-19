var visitorApp= angular.module('myApp',['ui.router', 'templates', 'ui.bootstrap'])

.config(function($stateProvider){
  var basePath='/';
  $stateProvider
    .state('welcome',{
      url:'',
      templateUrl: 'welcome/views/welcome.tpl.html',
      controller: 'WelcomeCtrl'
    })
    .state('visitor-register',{
      url:'/visitor-register',
      templateUrl: 'visitor-register/views/visitor-register.tpl.html',
      controller: 'VisitorRegisterCtrl'
    })
    .state('regitration-seccess',{
        url: '/registration-success',
        templateUrl: 'visitor-register/views/visitor-register-success.tpl.html'
    })
    .state('dashboard',{
      url : '/dashboard',
      templateUrl : 'dashboard/views/dashboard.tpl.html' 
    })
    ;

    visitorApp.config(['$httpProvider',function($httpProvider) {
var authToken;
authToken = $("meta[name=\"csrf-token\"]").attr("content");
return $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;
}]);
})
