import Main from '@/components/Main.vue';

export const loginRouter = {
  path: '/login',
  name: 'login',
  meta: {
    title: 'Login - 登录'
  },
  component: () => import('@/components/login/login.vue')
};
export const locking = {
  path: '/locking',
  name: 'locking',
  component: () => import('@/components/main-components/lockscreen/components/locking-page.vue')
};
export const page404 = {
  path: '/*',
  name: 'error-404',
  meta: {
    title: '404-页面不存在'
  },
  component: () => import('@/components/error-page/404.vue')
};

export const page403 = {
  path: '/403',
  meta: {
    title: '403-权限不足'
  },
  name: 'error-403',
  component: () => import('@/components/error-page/403.vue')
};

export const page500 = {
  path: '/500',
  meta: {
    title: '500-服务端错误'
  },
  name: 'error-500',
  component: () => import('@/components/error-page/500.vue')
};
// 作为Main组件的子页面展示但是不在左侧菜单显示的路由写在otherRouter里
export const otherRouter = {
  path: '/',
  name: 'otherRouter',
  redirect: '/home',
  component: Main,
  children: [
    { path: 'home', title: {i18n: 'home'}, name: 'home_index', component: () => import('@/components/home/home.vue') },
    { path: 'ownspace', title: '个人中心', name: 'ownspace_index', component: () => import('@/components/home/own-space/own-space.vue') },
    { path: 'message', title: '消息中心', name: 'message_index', component: () => import('@/components/home/message/message.vue') }
  ]
};
export const appRouter = [
  {
    path: '/access',
    icon: 'key',
    name: 'access',
    title: '权限管理',
    component: Main,
    children: [
      { path: 'index', title: '权限管理', name: 'access_index', component: () => import('@/components/access/access.vue') }
    ]
  },
  {
    path: '/international',
    icon: 'earth',
    title: {i18n: 'international'},
    name: 'international',
    component: Main,
    children: [
      { path: 'index', title: {i18n: 'international'}, name: 'international_index', component: () => import('@/components/international/international.vue') }
    ]
  },
  {
    path: '/component',
    icon: 'social-buffer',
    name: 'component',
    title: '组件',
    component: Main,
    children: [
      {
        path: 'text-editor',
        icon: 'compose',
        name: 'text-editor',
        title: '富文本编辑器',
        component: () => import('@/components/my-components/text-editor/text-editor.vue')
      },
      {
        path: 'md-editor',
        icon: 'pound',
        name: 'md-editor',
        title: 'Markdown编辑器',
        component: () => import('@/components/my-components/markdown-editor/markdown-editor.vue')
      },
      {
        path: 'image-editor',
        icon: 'crop',
        name: 'image-editor',
        title: '图片预览编辑',
        component: () => import('@/components/my-components/image-editor/image-editor.vue')
      },
      {
        path: 'draggable-list',
        icon: 'arrow-move',
        name: 'draggable-list',
        title: '可拖拽列表',
        component: () => import('@/components/my-components/draggable-list/draggable-list.vue')
      },
      {
        path: 'area-linkage',
        icon: 'ios-more',
        name: 'area-linkage',
        title: '城市级联',
        component: () => import('@/components/my-components/area-linkage/area-linkage.vue')
      }
    ]
  },
  {
    path: '/error-page',
    icon: 'android-sad',
    title: '错误页面',
    name: 'errorpage',
    component: Main,
    children: [
      { path: 'index', title: '错误页面', name: 'errorpage_index', component: () => import('@/components/error-page/error-page.vue') }
    ]
  }
];
export const routers = [
  loginRouter,
  otherRouter,
  locking,
  ...appRouter,
  page500,
  page403,
  page404
];
