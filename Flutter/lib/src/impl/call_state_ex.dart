import 'package:flutter/material.dart';

class CallStateEx {
  ///
  /// 视频通话-拨打者-拨打中-下部按钮层
  /// 提供有4个基础的按钮
  /// 会覆盖掉以下4个按钮的builder
  /// [vidoeCallerWaitingSwitchCameraButtonBuilder]
  /// [videoCallerWaitingHangupButtonBuilder]
  /// [videoCallerWaitingCameraControlButtonBuilder]
  /// [videoCallerWaitingVirtualBackgroundButtonBuilder]
  ///
  final Widget Function({
    required Function handleSwitchCamera,
    required Function handleHangup,
    required Function handleOpenCloseCamera,
    required Function handleOpenBlurBackground,
  })? videoCallerWaitingViewBuilder;
  // 视频通话-拨打者-拨打中-切换摄像头前后按钮
  final Widget Function(Function handleSwitchCamera)?
      vidoeCallerWaitingSwitchCameraButtonBuilder;
  // 视频通话-拨打者-拨打中-挂断按钮
  final Widget Function(Function handleHangup)?
      videoCallerWaitingHangupButtonBuilder;
  // 视频通话-拨打者-拨打中-切换摄像头开关按钮
  final Widget Function(Function handleOpenCloseCamera)?
      videoCallerWaitingCameraControlButtonBuilder;
  // 视频通话-拨打者-拨打中-模糊背景-开关
  final Widget Function(Function handleOpenBlurBackground)?
      videoCallerWaitingVirtualBackgroundButtonBuilder;

  ///
  /// 音视频通话-接听者-拨打中-下部按钮层
  /// 提供有2个基础的按钮
  /// 会覆盖掉以下2个按钮的builder
  /// [calleeWaitingHangupButtonBuilder]
  /// [calleeWaitingAcceptButtonBuilder]
  ///
  final Widget Function({
    required Function handleReject,
    required Function handleAccept,
  })? calleeWaitingViewBuilder;
  // 音视频通话-接听者-拨打中-挂断按钮
  final Widget Function(Function handleReject)?
      calleeWaitingHangupButtonBuilder;
  // 音视频通话-接听者-拨打中-接听按钮
  final Widget Function(Function handleAccept)?
      calleeWaitingAcceptButtonBuilder;

  ////
  // 单人-拨打中-背景builder
  final Widget Function(String avatar)? individualUserWaitingBackgroundBuilder;
  // 单人-拨打中-头像Builder
  final Widget Function(String avatar)? individualUserWaitingUserAvatarBuilder;
  // 单人-拨打中-描述Builder-(显示在用户名下面)
  final Widget Function()? individualUserWaitingDescBuilder;

  //拨打中-顶部悬浮按钮
  final Widget Function(Function openFloatWindow)? floatWindowBuilder;

  CallStateEx({
    this.videoCallerWaitingViewBuilder,
    this.vidoeCallerWaitingSwitchCameraButtonBuilder,
    this.videoCallerWaitingHangupButtonBuilder,
    this.videoCallerWaitingCameraControlButtonBuilder,
    this.videoCallerWaitingVirtualBackgroundButtonBuilder,
    this.calleeWaitingViewBuilder,
    this.calleeWaitingHangupButtonBuilder,
    this.calleeWaitingAcceptButtonBuilder,
    this.individualUserWaitingBackgroundBuilder,
    this.individualUserWaitingUserAvatarBuilder,
    this.individualUserWaitingDescBuilder,
    this.floatWindowBuilder,
  });
}
