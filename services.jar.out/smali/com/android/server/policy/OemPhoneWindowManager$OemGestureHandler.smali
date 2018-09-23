.class public Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OemGestureHandler"
.end annotation


# static fields
.field static final MSG_OEM_DISABLE_Quick_Pay_Button:I = 0x9

.field static final MSG_OEM_DISABLE_SCREEN_CAPTURE:I = 0x2

.field static final MSG_OEM_ENABLE_Quick_Pay_Button:I = 0x8

.field static final MSG_OEM_ENABLE_SCREEN_CAPTURE:I = 0x1

.field static final MSG_OEM_GET_ONLINE_CONFIG:I = 0xa

.field static final MSG_OEM_START_QUICK_PAY:I = 0x7

.field static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2100()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V

    goto/16 :goto_2

    :pswitch_3
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IApplicationToken;

    move-object v0, v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IApplicationToken;->addNoHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: Could not add NoHistory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
