import 'package:flutter/material.dart';

class FabItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  FabItem({required this.icon, required this.label, required this.onTap});
}