// import DeepError from '../error/DeepError';
// import BaseApi from './BaseApi';

// class BaseEosApi extends BaseApi {
//     constructor(activeUser, contractAccount) {
//         super(activeUser);
//         this.contractAccount = contractAccount;
//     }

//     async transactFull(actions) {
//         console.log(actions);
//         try {
//             await this.activeUser.signTransaction(
//                 {
//                     actions,
//                 },
//                 {
//                     broadcast: true,
//                     blocksBehind: 3,
//                     expireSeconds: 30
//                 },
//             );
//         } catch (err) {
//             throw new DeepError(err);
//         }
//     }

//     async transact({ name, data }) {
//         const action = await this._formatAction({
//             name,
//             data,
//         });
//         await this.transactFull([action]);
//     }

//     async _formatAction({ account, name, data }) {
//         const mAccount = account || this.contractAccount;
//         return {
//             account: mAccount,
//             name,
//             authorization: [
//                 {
//                     actor: await this.getAccountName(),
//                     permission: 'active',
//                 },
//             ],
//             data,
//         };
//     }

// }

// export default BaseEosApi;
