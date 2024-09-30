import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// ## 마이페이지 팝업
///
/// author [Eogeum@naver.com]
class UserDialog {
  /// ## 프로필 이미지 편집 팝업을 노출한다.
  static showProfileImageEditDialog(
    BuildContext context, {
    bool hideResetImage = false,
    required ProfileImageEditCallback callbacks,
  }) =>
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildProfileImageEditOptionItem(
                context,
                '카메라로 촬영',
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(source: ImageSource.camera);
                  final File? imageFile = image == null ? null : File(image.path);
                  callbacks(ProfileImageEditOption.camera, imageFile);
                },
              ),
              Divider(height: 1, color: Colors.grey),
              _buildProfileImageEditOptionItem(
                context,
                '갤러리에서 선택',
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                  final File? imageFile = image == null ? null : File(image.path);
                  callbacks(ProfileImageEditOption.gallery, imageFile);
                },
              ),
              if (!hideResetImage) ...[
                Divider(height: 1, color: Colors.grey),
                _buildProfileImageEditOptionItem(
                  context,
                  '기본 이미지로 변경',
                  onPressed: () => callbacks(ProfileImageEditOption.reset, null),
                ),
              ]
            ],
          ),
        ),
      );

  static Widget _buildProfileImageEditOptionItem(BuildContext context, String label,
          {required VoidCallback onPressed}) =>
      SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            onPressed();
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
      );

  /// ## 프로필 이미지 상세 팝업을 노출한다.
  static showProfileImageDetailDialog(BuildContext context, String imageUrl) => showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.black,
          child: InteractiveViewer(
            panEnabled: true, // 드래그 가능
            minScale: 0.5, // 최소 축소
            maxScale: 4.0, // 최대 확대
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.network(
                imageUrl ?? '',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      );
}

enum ProfileImageEditOption {
  camera,
  gallery,
  reset,
}

typedef ProfileImageEditCallback = void Function(ProfileImageEditOption option, File? imageFile);
