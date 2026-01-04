import 'package:json_annotation/json_annotation.dart';

part 'flash_sale.g.dart';

@JsonSerializable()
class FlashSale {
  final String id;
  final String name;
  final List<String> productIds;
  final double discount;
  final DateTime startTime;
  final DateTime endTime;
  final bool isActive;
  
  FlashSale({
    required this.id,
    required this.name,
    required this.productIds,
    required this.discount,
    required this.startTime,
    required this.endTime,
    required this.isActive,
  });
  
  factory FlashSale.fromJson(Map<String, dynamic> json) => _$FlashSaleFromJson(json);
  Map<String, dynamic> toJson() => _$FlashSaleToJson(this);
  
  // Helper method to check if sale is currently active
  bool get isCurrentlyActive {
    final now = DateTime.now();
    return isActive && 
           now.isAfter(startTime) && 
           now.isBefore(endTime);
  }
  
  // Helper method to get time remaining
  Duration get timeRemaining {
    final now = DateTime.now();
    if (now.isAfter(endTime)) {
      return Duration.zero;
    }
    return endTime.difference(now);
  }
  
  // Helper method to get formatted time remaining
  String get formattedTimeRemaining {
    final remaining = timeRemaining;
    if (remaining == Duration.zero) {
      return 'Avslutad';
    }
    
    final hours = remaining.inHours;
    final minutes = remaining.inMinutes.remainder(60);
    final seconds = remaining.inSeconds.remainder(60);
    
    if (hours > 0) {
      return '${hours}h ${minutes}m ${seconds}s';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }
  
  // Helper method to check if sale has started
  bool get hasStarted => DateTime.now().isAfter(startTime);
  
  // Helper method to check if sale has ended
  bool get hasEnded => DateTime.now().isAfter(endTime);
}
