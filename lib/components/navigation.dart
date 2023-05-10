import 'package:flutter_riverpod/flutter_riverpod.dart';

var initNavigation = StateProvider<int>((ref) => 0);
var projectNavigation = StateProvider<int>((ref) => 4);
var isHoverNavigation = StateProvider<bool>((ref) => false);
var isClicked = StateProvider<bool>((ref) => false);
