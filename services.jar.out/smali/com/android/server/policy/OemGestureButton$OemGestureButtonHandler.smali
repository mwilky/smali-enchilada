.class Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# static fields
.field static final MSG_OEM_ADD_BUTTON:I = 0x1

.field static final MSG_OEM_EFFECT:I = 0xa

.field static final MSG_OEM_REMOVE_BUTTON:I = 0x3

.field static final MSG_OEM_REMOVE_BUTTON_TIMEOUT:I = 0x4

.field static final MSG_OEM_SCALE_BUTTON:I = 0x2

.field static final MSG_OEM_SCALE_UP_ANIMATION:I = 0x9

.field static final MSG_OEM_SEND_KEY:I = 0x6

.field static final MSG_OEM_SEND_SWITCH_KEY:I = 0x5

.field static final MSG_OEM_START_TRANSITION:I = 0x8

.field static final MSG_OEM_UPDATE_BACKGROUND:I = 0xb

.field static final MSG_OEM_UPDATE_REGION:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 833
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 834
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 835
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 839
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, 0xbb

    const/16 v5, 0x3e9

    const/4 v6, -0x1

    const-wide/16 v7, 0xa

    const-wide/16 v9, 0x7d0

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 1046
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton;->setIgnoreNotchWallpaper()V

    .line 1047
    goto/16 :goto_8

    .line 841
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v2, :cond_1c

    .line 842
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$800()[F

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v12

    if-gt v2, v4, :cond_0

    .line 843
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setSize()V

    .line 844
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$800()[F

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onPull(F)V

    .line 845
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$708(Lcom/android/server/policy/OemGestureButton;)I

    .line 846
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 849
    :cond_0
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onRelease()V

    .line 850
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$702(Lcom/android/server/policy/OemGestureButton;I)I

    goto/16 :goto_8

    .line 1035
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v2, :cond_1c

    .line 1036
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1038
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$2900(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 1039
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1041
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14, v9, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 1014
    :pswitch_3
    const-string v2, "OemGestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_OEM_START_TRANSITION mGestureScreenShotView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v2, :cond_1

    return-void

    .line 1016
    :cond_1
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1020
    .local v2, "focusWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3, v2}, Lcom/android/server/policy/OemGestureButton;->access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v3, :cond_1c

    .line 1031
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 1021
    :cond_3
    :goto_0
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1023
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1025
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1026
    const-string v3, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_OEM_START_TRANSITION delay remove bg to wait for visible win:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_4
    return-void

    .line 1011
    .end local v2    # "focusWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2800(Lcom/android/server/policy/OemGestureButton;)V

    .line 1012
    goto/16 :goto_8

    .line 855
    :pswitch_5
    const-string v2, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_OEM_SEND_KEY mPreparedKeycode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$102(Lcom/android/server/policy/OemGestureButton;I)I

    .line 857
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    if-ne v2, v15, :cond_7

    .line 859
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mQuickPayWhich:I

    if-eq v2, v6, :cond_5

    .line 860
    const-string v2, "OemGestureButton"

    const-string v4, "QuickPay: Cancelled by HOME key"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v12}, Lcom/android/server/policy/PhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 863
    :cond_5
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 864
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 866
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$1000(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 867
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 869
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14, v9, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 872
    :cond_6
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_8

    .line 874
    :cond_7
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1100(Lcom/android/server/policy/OemGestureButton;I)V

    .line 876
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    if-nez v2, :cond_1c

    .line 877
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 883
    :pswitch_6
    const-string v2, "OemGestureButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_OEM_SEND_SWITCH_KEY edge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1300(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mSwipeLongFireable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 884
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mIsKeyguardShowing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 883
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1300(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 888
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    if-nez v2, :cond_8

    .line 889
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1600(Lcom/android/server/policy/OemGestureButton;)V

    .line 891
    :cond_8
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$102(Lcom/android/server/policy/OemGestureButton;I)I

    .line 892
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1302(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 893
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1402(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 894
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 895
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v2, :cond_9

    .line 896
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_gesture_button_guide_state"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 900
    :cond_9
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_a

    .line 901
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 902
    .local v2, "x":I
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .local v3, "y":I
    goto :goto_1

    .line 904
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_a
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 905
    .restart local v2    # "x":I
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 907
    .restart local v3    # "y":I
    :goto_1
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v5}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v5

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    invoke-static {v4, v2, v3, v5, v7}, Lcom/android/server/policy/OemGestureButton;->access$2100(Lcom/android/server/policy/OemGestureButton;IIFF)V

    .line 912
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_b
    :goto_2
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mQuickPayWhich:I

    if-eq v2, v6, :cond_1c

    .line 913
    const-string v2, "OemGestureButton"

    const-string v3, "QuickPay: Cancelled by SWITCH key"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v12}, Lcom/android/server/policy/PhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_8

    .line 998
    :pswitch_7
    const-string v2, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_OEM_REMOVE_BUTTON_TIMEOUT mGestureScreenShotView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v5, v5, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1001
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1002
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1003
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-interface {v2, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1005
    :cond_c
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object v13, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 1007
    :cond_d
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 1008
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 1009
    goto/16 :goto_8

    .line 961
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 962
    .local v5, "now":J
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_e

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_e
    move v2, v3

    .line 963
    .local v2, "isWaitForHome":Z
    :goto_3
    const-string v9, "OemGestureButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_OEM_REMOVE_BUTTON mGestureScreenShotView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v11, v11, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v9, v9, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v9, :cond_f

    return-void

    .line 965
    :cond_f
    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v9, v9, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 966
    .local v9, "focus":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v9, :cond_11

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v10}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v10

    if-ne v10, v4, :cond_10

    .line 967
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_4

    :cond_10
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_4
    goto :goto_5

    :cond_11
    move v12, v3

    :goto_5
    move v4, v12

    .line 969
    .local v4, "isFocusShown":Z
    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v10}, Lcom/android/server/policy/OemGestureButton;->access$300(Lcom/android/server/policy/OemGestureButton;)J

    move-result-wide v10

    cmp-long v10, v5, v10

    if-gez v10, :cond_12

    .line 970
    const-string v10, "OemGestureButton"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_OEM_REMOVE_BUTTON now="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " focus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v10, v9}, Lcom/android/server/policy/OemGestureButton;->access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v10

    and-int/2addr v4, v10

    .line 974
    :cond_12
    if-nez v4, :cond_15

    .line 975
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 977
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v10, v10, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 978
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 977
    invoke-virtual {v10, v15, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v3, v10, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 979
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v3, :cond_13

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 980
    :cond_13
    const-string v3, "OemGestureButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_OEM_REMOVE_BUTTON delay remove to wait for visible win:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_14
    return-void

    .line 984
    :cond_15
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v7, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 986
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v7, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 988
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v7, :cond_17

    .line 989
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 990
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v8, v8, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-interface {v7, v8}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 992
    :cond_16
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object v13, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 994
    :cond_17
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v10}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 995
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7, v3}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 996
    goto/16 :goto_8

    .line 922
    .end local v2    # "isWaitForHome":Z
    .end local v4    # "isFocusShown":Z
    .end local v5    # "now":J
    .end local v9    # "focus":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 923
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 924
    .local v4, "rawX":F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 925
    .local v5, "rawY":F
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v6, v6, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v6, :cond_1c

    .line 927
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v6

    if-nez v6, :cond_18

    .line 928
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$2300(Lcom/android/server/policy/OemGestureButton;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 928
    .local v6, "moveDistance":F
    goto :goto_6

    .line 930
    .end local v6    # "moveDistance":F
    :cond_18
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$2400(Lcom/android/server/policy/OemGestureButton;)F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 933
    .restart local v6    # "moveDistance":F
    :goto_6
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v7, :cond_19

    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_19

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 934
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 942
    :cond_19
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    invoke-static {v3, v7}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    .line 943
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    const/4 v7, 0x2

    div-int/2addr v3, v7

    .line 944
    .local v3, "half":I
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1a

    .line 945
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f19999a    # 0.6f

    int-to-float v10, v3

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    goto :goto_7

    .line 947
    :cond_1a
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3dcccccc    # 0.099999994f

    int-to-float v10, v3

    sub-float v10, v6, v10

    int-to-float v11, v3

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 950
    :goto_7
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 951
    const-string v7, "OemGestureButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_OEM_SCALE_BUTTON setScaleX rawX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " rawY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " moveDistance="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mScaleAlpha="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 952
    invoke-static {v9}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mScaleSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v9}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 951
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1b
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 955
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 956
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 957
    .end local v3    # "half":I
    .end local v6    # "moveDistance":F
    goto :goto_8

    .line 918
    .end local v2    # "event":Landroid/view/MotionEvent;
    .end local v4    # "rawX":F
    .end local v5    # "rawY":F
    :pswitch_a
    const-string v2, "OemGestureButton"

    const-string v3, "MSG_OEM_ADD_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2200(Lcom/android/server/policy/OemGestureButton;)V

    .line 920
    nop

    .line 1051
    :cond_1c
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
