import 'package:finance/feature/assets/data/dto/physical_assets_dto.dart';
import 'package:finance/feature/assets/data/dto/precious_metal_type_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';

class PhysicalAssetsModel {
  PhysicalAssetsModel({
    required this.assets,
  });

  factory PhysicalAssetsModel.fromDto(PhysicalAssetsDto dto, double goldTradePrice, double silverTradePrice) {
    return PhysicalAssetsModel(
      assets: [
        ...dto.rawAssets.map(
          (e) => PreciousMetalAssetModel.fromRawAssetDto(
            e,
            switch (e.composition) {
              PreciousMetalTypeDto.gold => goldTradePrice,
              PreciousMetalTypeDto.silver => silverTradePrice,
              PreciousMetalTypeDto.other => 0,
            },
          ),
        ),
        ...dto.cashAssets.map(AssetModel.fromPhysicalAssetDto),
        ...dto.coinAssets.map(
          (e) => PreciousMetalAssetModel.fromCoinAssetDto(
            e,
            switch (e.data.composition) {
              PreciousMetalTypeDto.gold => goldTradePrice,
              PreciousMetalTypeDto.silver => silverTradePrice,
              PreciousMetalTypeDto.other => 0,
            },
          ),
        ),
      ],
    );
  }

  final List<AssetModel> assets;
}
