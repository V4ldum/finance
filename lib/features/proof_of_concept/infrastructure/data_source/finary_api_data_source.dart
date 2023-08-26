import 'dart:io';

import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/infrastructure/abstract_data_source/abstract_finary_api_data_source.dart';
import 'package:finance/features/proof_of_concept/infrastructure/dto/authentication_model.dart';
import 'package:finance/features/proof_of_concept/infrastructure/dto/investments_distribution_query_model.dart';
import 'package:finance/features/proof_of_concept/infrastructure/dto/investments_distribution_type.dart';
import 'package:finance/shared/constants/strings.dart';
import 'package:meta_package/types.dart';

class FinaryApiDataSource implements AbstractFinaryApiDataSource {
  final _dio = Dio(
    BaseOptions(
      baseUrl: Strings.finaryApiUrl,
    ),
  );

  @override
  Future<AuthenticationModel> auth(String username, String password) async {
    return AuthenticationModel.fromHttpResponse(
      await _dio.post<JsonResponse>(
        '/auth/signin',
        queryParameters: {
          'email': username,
          'password': password,
          'device_id':
              // fake user-agent
              'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36',
        },
      ),
    );
  }

  @override
  Future<AuthenticationModel> authOtp(
    String username,
    String password,
    String otp,
    String otpRelayToken,
  ) async {
    return AuthenticationModel.fromHttpResponse(
      await _dio.post<JsonResponse>(
        '/auth/signin',
        queryParameters: {
          'email': username,
          'password': password,
          'device_id':
              // fake user-agent
              'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36',
          'otp_code': otp,
          'otp_relay_token': otpRelayToken,
        },
      ),
    );
  }

  @override
  Future<InvestmentsDistributionQueryModel> investmentsDistribution({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  }) async {
    return InvestmentsDistributionQueryModel.fromHttpResponse(
      await _dio.get<JsonResponse>(
        '/users/me/portfolio/investments/distribution?type=${type.name}',
        options: Options(
          headers: {
            'Cookie': {
              Cookie(
                'finary_access_token',
                'NftOIHMVlA9BBDC3JAgjRtsjcOXyjiL9Pm2dLbiM7sVkXpLlul0femuyVoioYkwAEUxV47iQX14bKc%2BeAGK0BekGZS%2F2W3%2Fb%2F0JLOx%2BHouSvELkuoAZu4cDbin8SCkMYmwgsFgDz%2FX2F58SQRRKT0y4id6mBW8eN6VjcWM2gpOcR4YQpg986fmCeb07lKHaaA79qN5Dk7dmYXHzkhE7Gm5wxIY8Ih%2FF6M1Eo5ritE6DjZ2OG9kDbhDOi3mzSgF2OF%2Fe%2FyKUtsJKEabfeQowNSz4vl9oxLWUBg9qF%2FoHHcwajdIva6EhoZ84Qd9I8IEVbK3Z4uFqAMH%2F5Ead8h7OPBzeKgOvM6onGtMYv%2F2qK0%2F8X5Tl98NbuhrfSJkvBBS35h6%2Bvkh6TMm72gUl%2FKNiOdhclaiYTNTq4BXQYyNjOtsVVelggS6j0vIkb2CloYNZnMZy%2FyEOJBic9SmRywLSi9nEvQDGGHva%2FWCY7V3Gcer1kpIivJ%2F6QvzdzldQOnhNZUB%2FOaEcENLyLa4MJ0itfoMHPr4LGiIfvfrFN3tE%2B7VYzKBRrHdBYWrVXkH5HIA%2FF6L7VA3QehyUvmfCgQE3Vg%2BQElBTU67VSX%2BIFcKbJGB5YuglnA4otRQpu0ilKGAcBmmXG%2FeRI8244X1Gfsls8APWQI2LhfFGhNsHVEew0LmYlXIs8folaDod%2B%2BnzMJMwwKdvE12jhcyQQlnmDEDD4pz9TWf0PR3wbiRpXMmCpXkgNYrQliuXMYM5%2BYRe8Lwh86sEgIsaTGRLT%2FfzaASBYx7D0ft2hlJiafglmugphtGqcAHr9q5PnNFW9Ttu%2B0skN%2Fl4hF%2Bxuy4qZBehWhCohakNrgkJ6G5u6lUDkeceOIXqzxcIvTPPCUn1FKpQ7O%2B%2FuabkQH4WePMnkl3AZIixysI4DApRdL6DHR0pQw5iA3nfLUKzn%2B4H4VV6Tk6D6PTcb8lCoi3yqvasV25bZW61CQ9IxmkYc5zBkI2DarxCJ82f41Bxs%2BkagyX2mYcQxDMM0sR6WR8xMQHhe--%2BWiRIzS%2FJy2E8FDh--pj7BF1DLoZD41E6HBvgyOg%3D%3D',
              ),
              Cookie(
                'finary_refresh_token',
                'nYUE2tskSCKnVVJx%2F2eBzIfSq21sPMZY9m12FAdFhzlYlm7sxIZYUy0uMZ7fat7fQEcWvFkhjO%2B7p4GkblvMQJPEot%2FFtd5JrCeXsNUogxTJLC88y4Kx8dmn7DkC7MBgLMSytezEtTEE5j8vCdcUUAHb53W9YOIlHBCBxXFoYn64SbjneJGZfudlWILjJE7tjz5OTx7mNetPdgSMexrmh%2FOVgzL%2BjIVZajh%2FyqU3v5iyYr1RglQ3LWFtWLgtxYbhldnmnTOkDCqMsdLxbVFPY8EoSaLwIR2OcNuB7XWrLoCKVze%2FR%2BIiZnvVJDbR5RID%2BdFYjqXS6Gph13hkQ%2FlAu%2BplriEimMGrFt8CzcQERErSqjk9dD2y5cGD%2F9URKJR10TnwPrLXVlm87BTXxJ539v%2F2dSkq1IL2lWr9VWz2nr5UH4LaY1P%2FTEofViCJnarrgjvfdt3ogRkTSxi%2BzIvAgG0nhpZsvQQy3%2B3hADoISnQWHMwO1wCR5lIN8eC9xmwDK7SIS%2FGuqg%2BctzmJCyeqVTyeeY%2FXMU5aeHw5ETTqNvT7UuBf4BekgEnP6zM485sjYCVAT0%2Fe5xj5P7tUCOYw0DZwXlZqq5ePESnc7ZAiE%2FVx05W4AJfkc%2FPGMN7Scwy79XjxSEHC%2F7LDyI%2F4fQ4d23HdU%2F9%2B%2FbHQhirr1qpIGj7nNGEf7Oz4Hw7Sa1O0xUiz%2FI%2BBRYGBJ2IwZwcGFr%2B1SHx%2Fp6tBZxNgdgAsTrjc--e6c2DBX5Qn7rwnaD--inChq%2FgBu0pOKb62Y5K3Qg%3D%3D',
              ),
            },
          },
        ),
      ),
    );
  }
}
