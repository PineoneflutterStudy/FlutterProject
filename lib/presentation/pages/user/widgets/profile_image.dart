import 'package:flutter/material.dart';

/// ## 프로필 이미지 위젯
///
/// author [Eogeum@naver.com]
class ProfileImage extends StatelessWidget {
  final String? imageUrl;
  final double size;
  final double radius;

  const ProfileImage({
    Key? key,
    required this.imageUrl,
    required this.size,
  })  : radius = size / 2,
        super(key: key);

  @override
  Widget build(BuildContext context) => imageUrl == null || imageUrl!.isEmpty
      ? _buildDefaultProfile()
      : ClipOval(
          child: Image.network(
            imageUrl ?? '',
            fit: BoxFit.cover,
            height: size,
            width: size,
            loadingBuilder: (context, child, loadingProgress) =>
                loadingProgress == null ? child : _buildDefaultProfile(),
            errorBuilder: (context, error, stackTrace) => _buildDefaultProfile(),
          ),
        );

  Widget _buildDefaultProfile() => CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.person, size: 40, color: Colors.white),
      );
}
