import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    final logger = Logger();
    logger.i('''
{
  "providerAdded": "${provider.name ?? provider.runtimeType}",
  "providerValue": "$value"
}''');
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    final logger = Logger();
    logger.w('''
{
  "providerUpdate": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    final logger = Logger();
    logger.e('''
{
  "providerDisposed": "${provider.name ?? provider.runtimeType}",
  
}''');
  }
}
