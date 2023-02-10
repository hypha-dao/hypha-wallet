// ignore_for_file: slash_for_doc_comments, prefer_single_quotes, unnecessary_brace_in_string_interps
import 'package:mime/mime.dart';

class ProfileApi {



    final ppp = PPP.instance;

    // init() {
    //     PPP.events.on('activeUserChanged', (activeUser) => this.setActiveUser(activeUser));
    // }

    Future<dynamic> _request({ required String endpoint, required Map<String, dynamic> payload }) {
        return RequestApi.post(
            endpoint: endpoint,
            body: {
                ...payload,
                'originAppId': ppp.originAppId,
            },
            apiName: 'profileApi',
        );
    }

    /**
     * @desc Register a new user or edit users data. When registering a new user at least
     *  one of the emailAddress or smsNumber must be sent. When the emailAddress or smsNumber is
     *  modified, a verification code will be sent to the changed medium, and the medium must be
     *  verified
     *
     * @param {Object} data
     * @param {String} data.emailAddress, @see ppp-common/RootFields
     * @param {String} data.smsNumber @see ppp-common/RootFields it must be full number including country code example
     * +525583686747,
     * @param {String} data.commPref @see ppp-common/RootFields @see ppp-common/CommMethods possible values SMS or EMAIL, preferred comunication medium
     * @param {String} data.publicData.name @see ppp-common/PublicFields
     * @param {String} data.publicData.timeZone, @see ppp-common/PublicFields
     * @param {String} data.publicData.avatarImage file name key @see ppp-common/PublicFields
     * @param {String} data.publicData.identity aws user identityId @see ppp-common/PublicFields
     * @param {String} data.publicData.tags aws user identityId @see ppp-common/PublicFields
     * @param {String} data.publicData.bio aws user identityId @see ppp-common/PublicFields
     * @param {Object} data.publicData More fields can be added to the common public data
     * @param {Object} data.privateData Common fields that only the owner should see
     * @param {Object} data.appData.publicData App specific public fields
     * @param {Object} data.appData.privateData App specific fields that only the owner should see
     * 
     *
     * @return {Object} object indicating the succesful call, it contains a profile property 
     * with the new profile data this object doesn't have to be analyzed, it can be assumed 
     * that if the method does not throw an error the call was succesful
     * @throws error on an unsuccesful call to the service
     */
    Future<dynamic> register(Map<String, dynamic> data) async {
        final res = await _request(
            endpoint: 'register',
            payload: data,
        );
        return res['profile'];
    }

    /**
     * @desc Uploads an image associated to the current users account
     *
     * @param {Object} file the image to upload
     * 
     * @return {string} the name of the image in the store
     * @throws error on an unsuccesful call to the service
     */
    Future<dynamic> uploadImage(File file, accountName) async {
        // const toMB = (bytes) => bytes / 1000000;
        final int MAX_SIZE = int.parse(PPP.getConfig('maxImageSize'));
        final types = PPP.getConfig('imageTypes');
        final mimeType = lookupMimeType(file.path); // 'image/jpeg'
        final fileSize = await file.length();

        print("mime type: $mimeType");

        if (mimeType  == null) {
          throw "File is of unknown mime type and cannot be processed. Allowed types are: ${types}";
        }
        if (types.indexOf(mimeType) < 0) {
            throw 'File type is: ${mimeType}. Allowed types are: ${types}';
        }
        if (fileSize > MAX_SIZE) {
            throw 'File size is: ${fileSize/1000000.0} MB. Max allowed size is: ${MAX_SIZE/1000000.0} MB';
        }
        final filename = '${accountName}-${DateTime.now()}.${extensionFromMime(mimeType)}';

        UploadFileOptions options = UploadFileOptions()
          ..accessLevel = StorageAccessLevel.protected
          ..contentType = mimeType;
        final stored = await Amplify.Storage.uploadFile(local: file, key: filename, options: options,);
        return stored.key;
    }

    /**
     * @desc Returns the url to the image file
     *
     * @param {string} key the name of the file in the store, returned by the upload image method
     * @param {string} identity id of the user account that owns the image
     * 
     * @return {string} the name of the image in the store
     * @throws error on an unsuccesful call to the service
     */
    // async getImageUrl(key, identity) {
    //     return Storage.get(key, {
    //         level: 'protected',
    //         identityId: identity
    //     });
    // }
    Future<String> getImageUrl({ required String key, required String identity}) async {
      final options = GetUrlOptions(accessLevel: StorageAccessLevel.protected);
      final res = await Amplify.Storage.getUrl(key: key, options: options);
      return res.url;
    }

    /**
     * @desc Retrieves registered user data
     * @param {String} [fetchType] @see ppp-common/ProfileFetchTypes indicates the wanted data base only,app only or both
     * @return {object} with the user data or null if user is not registered
     */
    Future<Map<String, dynamic>?> getProfile({String? fetchType}) async {
        final payload = fetchType != null ? {
                'fetchType': fetchType,
            } : {};
        final res = await _request(
            endpoint: 'get-profile',
            payload: payload,
        );
        return res['profile'];
    }

    /**
     * @desc Retrieves public profiles for one or more eosAccounts
     *
     * @param {Array} of strings indicating the eosAccounts for which data wants to be retrieved
     * @param {String} [fetchType] @see ppp-common/ProfileFetchTypes indicates the wanted data base only,app only or both
     * @return {object} mapping eosAccount to their profile data of the form {eosAccount: profile}
     */
    async getProfiles(eosAccounts, fetchType = null) {
        eosAccounts = Util.removeDuplicates(eosAccounts);
        const { profiles } = await this._request({
            endpoint: 'get-profiles',
            payload: {
                eosAccounts,
                fetchType,
            },
        });
        return profiles;
    }

    async hydrateWithUser(objs, accountProp = 'eosAccount', hydratedProp = null) {
        return Util.hydrate(
            objs,
            accountProp,
            hydratedProp || `${accountProp}Info`,
            async (eosAccounts) => this.getAppData(eosAccounts),
        );
    }

    /**
     * @desc Send a message to a user
     *
     * @param {String} eosAccount of the user who the message is going to be sent to
     * @param {String} message to send
     * @return object indicating the succesful call, this object doesn't have to be
     *         analyzed, it can be assumed that if the method does not throw an error
     *         the call was succesful
     * @throws error on an unsuccesful call to the service
     */
    async sendMessage(eosAccount, message) {
        return this._request({
            endpoint: 'send-msg',
            payload: {
                eosAccount,
                message,
            },
        });
    }

    /**
     * @desc Verify an sms number
     *
     * @param {String} smsOtp verification code
     * @return object indicating the succesful call, this object doesn't have to be
     *         analyzed, it can be assumed that if the method does not throw an error
     *         the call was succesful
     * @throws error on an unsuccesful call to the service
     */
    async verifySms(smsOtp) {
        return this._request({
            endpoint: 'verify-sms',
            payload: {
                smsOtp,
            },
        });
    }

    /**
     * @desc Verify an email
     *
     * @param {String} emailOtp verification code
     * @return object indicating the succesful call, this object doesn't have to be
     *         analyzed, it can be assumed that if the method does not throw an error
     *         the call was succesful
     * @throws error on an unsuccesful call to the service
     */
    async verifyEmail(emailOtp) {
        return this._request({
            endpoint: 'verify-email',
            payload: {
                emailOtp,
            },
        });
    }

    /**
     * @desc Retrieves the chats a specific user is involved in, returns from the most recent
     * chat to the least recent, it can also search for a chat with specific counter party
     *
     * @param {String} [search] start part of the counter party eos account
     * @param {Number} [limit] the number of items to retrieve
     * @param {Object} [lastEvaluatedKey] used when paginating, this is the value that was returned
     * on the response on the previous call
     * @return {Object} with the following properties: items, count, lastEvaluatedKey.
     * lastEvaluatedKey is returned
     * only if there are more results to be retrieved
     * @throws error on an unsuccesful call to the service
     */
    async getChats(search, limit, lastEvaluatedKey) {
        const { chats } = await this._request({
            endpoint: 'get-chats',
            payload: {
                search,
                limit,
                lastEvaluatedKey,
            },
        });
        chats.items = chats.items.map((_item) => {
            const item = _item;
            item.sentAt = new Date(item.sentAt);
            return item;
        });
        return chats;
    }

    /**
     * @desc Retrieves the messages between the current user and the user specified in the eosAccount parameter,
     * returns from the most recent message to the least recent
     *
     * @param {String} eosAccount the eosAccount of the messaging counter party
     * @param {Number} [limit] the number of items to retrieve
     * @param {Object} [lastEvaluatedKey] used when paginating, this is the value that was returned
     * on the response on the previous call
     * @return {Object} with the following properties: items, count, lastEvaluatedKey.
     * lastEvaluatedKey is returned
     * only if there are more results to be retrieved
     * @throws error on an unsuccesful call to the service
     */
    async getMessages(eosAccount, limit, lastEvaluatedKey) {
        const { messages } = await this._request({
            endpoint: 'get-messages',
            payload: {
                eosAccount2: eosAccount,
                limit,
                lastEvaluatedKey,
            },
        });
        messages.items = messages.items.map((_item) => {
            const item = _item;
            item.sentAt = new Date(item.sentAt);
            return item;
        });
        return messages;
    }

    /**
     * @desc Enables the search of profiles using their eosAccount
     * @param {String} search start part of the eos account
     * @param {Number} [limit] the number of items to retrieve
     * @param {Object} [lastEvaluatedKey] used when paginating, this is the value that was returned
     * on the response on the previous call
     * @return {Object} with the following properties: items, count, lastEvaluatedKey.
     * lastEvaluatedKey is returned
     * only if there are more results to be retrieved
     * @throws error on an unsuccesful call to the service
     */
    async searchProfiles(search, limit, lastEvaluatedKey) {
        const { profiles } = await this._request({
            endpoint: 'search-profiles',
            payload: {
                search,
                limit,
                lastEvaluatedKey,
            },
        });
        return profiles;
    }

    /**
     * @desc Registers an app with the profile service, enabling it to interact with it
     * @param {object} data
     * @param {String} data.type app type @see ppp-common/AppTypes
     * @param {String} data.isPrivate indicates whether the app can keep the client secret private or not, 
     * apps with backend server are private
     * @param {String} [data.appId] used for updates, this is the id associated with the app returned
     * by this service
     * @param {String} [data.baseUrl] the url where the app is hosted, and from which the app-metadata.json 
     * and chain-manifests.json files can be downloaded, required for web apps
     * @param {String} [data.name] app name required for non web apps
     * @param {String} [data.shortname] app shortname required for non web apps
     * @param {String} [data.icon] app icon url required for non web apps
     * @param {String} [data.oauthRedirectUrls] an array of urls, that app intends to use as oauth redirect urls
     * @return {Object} object indicating the succesful call, it contains an app property 
     * with the new app data this object doesn't have to be analyzed, it can be assumed 
     * that if the method does not throw an error the call was succesful
     * @throws error on an unsuccesful call to the service
     */
    async registerApp(data) {
        const { app } = await this._request({
            endpoint: 'register-app',
            payload: {
                ...data
            },
        });
        return app;
    }

    /**
     * @desc Deletes an app
     *
     * @param {String} appId to delete
     * @return {object} with success message
     * @throws error on an unsuccesful call to the service
     */
    async deleteApp(appId) {
        return await this._request({
            endpoint: 'delete-app',
            payload: {
                appId,
            },
        });
    }

    /**
     * @desc Retrieves public apps by one or more appIds
     *
     * @param {Array} of strings indicating the appIds for which data wants to be retrieved
     * @return {object} mapping appId to their app data of the form {appId: app}
     */
    async getApps(appIds) {
        appIds = Util.removeDuplicates(appIds);
        const { apps } = await this._request({
            endpoint: 'get-apps',
            payload: {
                appIds,
            },
        });
        return apps;
    }

    /**
     * @desc Retrieves the apps associated to the logged in account
     *
     * @return {Array} of apps
     */
    async getMyApps() {
        const { apps } = await this._request({
            endpoint: 'get-my-apps'
        });
        return apps;
    }
}

import 'dart:ffi';
import 'dart:io';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:hypha_wallet/core/ppp_service/ppp.dart';
import 'package:hypha_wallet/core/ppp_service/service/RequestApi.dart';

export default ProfileApi;
