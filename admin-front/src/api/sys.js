import ajax from '../libs/ajax'
export function login(params){
  return ajax({
    method: 'post',
    url: "/login",
    params: params
  });
}
