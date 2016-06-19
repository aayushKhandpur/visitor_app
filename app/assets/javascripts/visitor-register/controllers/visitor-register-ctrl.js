"use strict";
angular
  .module('myApp')
  .controller('VisitorRegisterCtrl',['$scope','$http', '$location',function($scope, $http, $location){
    $scope.visitor={};
    $scope.eduList=["SSC","HSC", "UNDER-GRADUATE", "POST-GRADUATE", "DIPLOMA","ENGINEERING", "OTHER"];
    $scope.showOther=false;
    $scope.otherRequired="";
    $scope.selectEducation=function(){
      if(angular.isDefined($scope.visitor.highestEducation) && $scope.visitor.highestEducation=="OTHER"){
        $scope.showOther=true;
        $scope.otherRequired="required";
      }else{
        $scope.showOther=false;
        $scope.otherRequired="";

      }
    }

    function setJSONdata(){
      var visitor_json={};
      visitor_json.first_name= $scope.visitor.firstName;
      visitor_json.last_name= $scope.visitor.lastName;
      visitor_json.email_id=$scope.visitor.email;
      visitor_json.city=$scope.visitor.city;
      visitor_json.phone_no=$scope.visitor.phone;
      visitor_json.gender=$scope.visitor.gender;
      visitor_json.dob= $scope.visitor.dob;
      visitor_json.address=$scope.visitor.address;
      visitor_json.state=$scope.visitor.state;
      visitor_json.pincode=$scope.visitor.pincode;
      visitor_json.otherEdu=$scope.visitor.otherEdu;
      visitor_json.eduInstitute=$scope.visitor.eduInstitute;
      visitor_json.studentOccupation=$scope.visitor.studentOccupation;
      visitor_json.highestEducation=$scope.visitor.highestEducation;
      visitor_json.computerKnowledge=$scope.visitor.computerKnowledge;
      visitor_json.guardianName=$scope.visitor.guardianName;
      visitor_json.guardianEmail=$scope.visitor.guardianEmail;
      visitor_json.guardianPhone=$scope.visitor.guardianPhone;
      visitor_json.guardianOccupation=$scope.visitor.guardianOccupation;
      visitor_json.arenaNewspaper=$scope.visitor.arenaNewspaper;
      visitor_json.arenaTV=$scope.visitor.arenaTV;
      visitor_json.arenaInternet=$scope.visitor.arenaInternet;
      visitor_json.arenaStudent=$scope.visitor.arenaStudent;
      visitor_json.arenaBanner=$scope.visitor.arenaBanner;
      visitor_json.arenaFriends=$scope.visitor.arenaFriends;
      return visitor_json;
    }
    $scope.validateAndSaveVisitor= function(){

      if($scope.visitorForm.$valid){
          console.log($scope.visitorForm.$valid )
          var data=setJSONdata();
          console.log(data);
         $http.post('/visitors',data)
          .success(function(data){
            console.log("Visitor saved!");
            console.log(data);
            $location.path('/registration-success');
          })
          .error(function(data){
            console.log("some error occured!");
            console.log(data);
          })


      }else{
        console.log("Invalid inputs!!");
      }

      console.log($scope.visitor);
    };
  }]);
