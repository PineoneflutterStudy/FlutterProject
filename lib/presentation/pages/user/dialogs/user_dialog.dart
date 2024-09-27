import 'package:flutter/material.dart';

/// ## 마이페이지 팝업
///
/// author [Eogeum@naver.com]
class UserDialog {
  /// 프로필 편집 팝업을 노출한다.
  static showProfileImageEditDialog(
    BuildContext context, {
    bool hideResetImage = false,
    required VoidCallback onCameraPressed,
    required VoidCallback onGalleryPressed,
    required VoidCallback onResetImagePressed,
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
                onPressed: onCameraPressed,
              ),
              Divider(height: 1, color: Colors.grey),
              _buildProfileImageEditOptionItem(
                context,
                '갤러리에서 선택',
                onPressed: onGalleryPressed,
              ),
              if (!hideResetImage) ...[
                Divider(height: 1, color: Colors.grey),
                _buildProfileImageEditOptionItem(
                  context,
                  '기본 이미지로 변경',
                  onPressed: onResetImagePressed,
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
            Navigator.of(context).pop();
            onPressed();
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
}
