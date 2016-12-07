/**
 * INSPINIA - Responsive Admin Theme
 *
 * Inspinia theme use AngularUI Router to manage routing and views
 * Each view are defined as state.
 * Initial there are written state for all view in theme.
 *
 */
function config($stateProvider, $urlRouterProvider, $ocLazyLoadProvider) {
    $urlRouterProvider.otherwise("/index/main");

    $ocLazyLoadProvider.config({
        // Set to true if you want to see what and when is dynamically loaded
        debug: false
    });

    $stateProvider

        .state('index', {
            abstract: true,
            url: "/index",
            templateUrl: "app/views/common/content.html",
			controller: 'MainCtrl'
        })
        .state('index.main', {
            url: "/main",
            templateUrl: "app/views/main.html",
			controller: 'MainCtrl',
            data: { pageTitle: 'Example view' }
        })
        .state('index.minor', {
            url: "/minor",
            templateUrl: "app/views/minor.html",
			controller: 'MainCtrl',
            data: { pageTitle: 'Example view' }
        })
        .state('dxgrid', {
        abstract: true,
        url: "/dxgrid",
        templateUrl: "App/views/common/content.html",
        controller: 'MainCtrl',
        })
        .state('dxgrid.customers', {
            url: "/customers",
            templateUrl: "App/views/customers.html",
            controller: 'dxGridController'
        })
        .state('dxgrid.orders', {
            url: "/orders",
            templateUrl: "App/views/orders.html",
            controller: 'dxGridController'
        });

}
angular
    .module('apoxcrm')
    .config(config)
    .run(function($rootScope, $state) {
        $rootScope.$state = $state;
    });
