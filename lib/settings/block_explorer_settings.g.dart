// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorer_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockExplorerSettings _$$_BlockExplorerSettingsFromJson(Map json) =>
    _$_BlockExplorerSettings(
      selection: (json['selection'] as Map?)?.map(
            (k, e) => MapEntry($enumDecode(_$KaspaNetworkEnumMap, k),
                BlockExplorer.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {
            KaspaNetwork.mainnet: kKaspaExplorerMainnet,
            KaspaNetwork.testnet: kKatnipTestnet,
            KaspaNetwork.devnet: kKaspaExplorerMainnet,
            KaspaNetwork.simnet: kKaspaExplorerMainnet
          },
    );

Map<String, dynamic> _$$_BlockExplorerSettingsToJson(
        _$_BlockExplorerSettings instance) =>
    <String, dynamic>{
      'selection': instance.selection
          .map((k, e) => MapEntry(_$KaspaNetworkEnumMap[k]!, e.toJson())),
    };

const _$KaspaNetworkEnumMap = {
  KaspaNetwork.mainnet: 'mainnet',
  KaspaNetwork.testnet: 'testnet',
  KaspaNetwork.devnet: 'devnet',
  KaspaNetwork.simnet: 'simnet',
};
