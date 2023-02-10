// /* eslint-disable no-undef */
// import 'ProfileApiTest.dart'fetch from 'node-fetch';
// import 'ProfileApiTest.dart'{ PPP } from '..';

// global.fetch = fetch;

// jest.setTimeout(10000);

// PPP.configure('test', 'ce041970-0bb6-11ea-9daa-ada77c4bce38');

// describe('getProfiles', () => {
//     const profileApi = PPP.profileApi();

//     test('getProfiles 1 profile', async () => {
//         const profiles = await profileApi.getProfiles(['testtesttest']);
//         expect(profiles).not.toBeNull();
//         console.log(JSON.stringify(profiles, null, 2));
//     });
// });

// describe('searchProfiles', () => {
//     const profileApi = PPP.profileApi();

//     test('searchProfiles', async () => {
//         const profiles = await profileApi.searchProfiles('seb');
//         expect(profiles).not.toBeNull();
//         console.log(JSON.stringify(profiles, null, 2));
//     });
// });

// /*
// describe('register', () => {
//     let authApi;
//     let profileApi;

//     beforeAll(async () => {
//         profileApi = new ProfileApi({
//             async getAccountName() {
//                 return 'testuser1';
//             },
//         });
//         authApi = new AuthApi({
//             async getAccountName() {
//                 return 'testuser1';
//             },
//         });
//         authApi._authenticate = async function () {
//         }
//         await authApi.signOut();
//         await authApi.signIn();
//     });



//     test('register basic data only', async () => {
//         const { profile } = await profileApi.register({
//             emailAddress: 'sebastian.montero@gmail.com',
//             commPref: 'EMAIL',

//         });
//         expect(profile).not.toBeNull(profile);
//     });
// }); */


// /* describe('getProfile', () => {
//     let authApi;
//     let profileApi;

//     beforeAll(async () => {
//         profileApi = new ProfileApi({
//             async getAccountName() {
//                 return 'testuser1';
//             },
//         });
//         authApi = new AuthApi({
//             async getAccountName() {
//                 return 'testuser1';
//             },
//         });
//         authApi._authenticate = async function () {
//         }
//         await authApi.signOut();
//         await authApi.signIn();
//     });



//     test('register basic data only', async () => {
//         const { profile } = await profileApi.getProfile();
//         expect(profile).not.toBeNull(profile);
//     });
// });
//  */

// /* describe('getAppMetadata', () => {
//     let profileApi;

//     beforeAll(async () => {
//         profileApi = new ProfileApi({
//             async getAccountName() {
//                 return 'testuser1';
//             },
//         });
//     });

//     test('getAppMetadata', async () => {
//         const metadata = await profileApi.getAppMetadata('https://sad-euler-877c4c.netlify.com/');
//         expect(metadata).not.toBeNull(metadata);
//         expect(metadata).toHaveProperty('name');
//         expect(metadata).toHaveProperty('shortName');
//         expect(metadata).toHaveProperty('icon');
//     });
// }); */