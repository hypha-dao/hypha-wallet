// /* eslint-disable no-undef */
// import fetch from 'node-fetch';
// import { PPP } from '..';
// import AuthApi from './AuthApi';

// global.fetch = fetch;

// jest.setTimeout(20000);

// PPP.configure('test');

// describe('signIn', () => {

//     const authApi = new AuthApi({
//         async getAccountName() {
//             return 'testuser2';
//         },
//     });

//     authApi._authenticate = async function () {}

//     test('signIn signOut', async () => {
//         await authApi.signOut();
//         expect(await authApi.hasValidSession()).toBe(false);
//         const currentSession = await authApi.signIn();
//         console.log('Current Session: ', currentSession);
//         expect(currentSession).not.toBeNull();
//         expect(currentSession).toHaveProperty('accessToken');
//         expect(await authApi.hasValidSession()).toBe(true);
//         const userInfo = await authApi.userInfo();
//         console.log('User Info: ', userInfo);
//         expect(userInfo).not.toBeNull();
//         expect(userInfo.id).toBeDefined();
//         await authApi.signOut();
//         expect(await authApi.hasValidSession()).toBe(false);

//     });
// });
