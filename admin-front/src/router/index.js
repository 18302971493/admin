import Vue from 'vue';
import iView from 'iview';
import Util from '../libs/util';
import VueRouter from 'vue-router';
import Cookies from 'js-cookie';
import {routers, otherRouter, appRouter} from './router';
Vue.use(VueRouter);

const RouterConfig = {
   mode: 'history',
  routes: routers
};
export const router = new VueRouter(RouterConfig);
