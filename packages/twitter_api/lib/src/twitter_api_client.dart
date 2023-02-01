import 'dart:io';

import 'package:dio/dio.dart';

import 'models/user_tweets_response.dart';

class TwitterApiClient {
  TwitterApiClient({
    Dio? dio,
    required String bearerToken,
  }) {
    _dio = dio ?? Dio();
    _dio.options = BaseOptions(
      baseUrl: 'https://api.twitter.com/2/',
      headers: {
        'Authorization': 'Bearer $bearerToken',
      },
    );
  }

  late final Dio _dio;

  Future<UserTweetsResponse> getUserTweets({
    required String id,
    int maxResult = 10,
    String? paginationToken,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      'users/$id/tweets',
      queryParameters: {
        'max_results': maxResult,
        'exclude': 'retweets,replies',
        'tweet.fields': 'created_at,public_metrics',
        'expansions': 'author_id,attachments.media_keys',
        'user.fields': 'name,username,profile_image_url',
        'media.fields': 'url',
        if (paginationToken != null) //
          'pagination_token': paginationToken,
      },
    );

    if (response.statusCode != 200) {
      throw HttpException(
          'code: ${response.statusCode}, message: ${response.statusMessage}');
    }

    if (response.data == null) {
      throw const HttpException('response body is empty');
    }

    return UserTweetsResponse.fromJson(response.data!);
  }
}
