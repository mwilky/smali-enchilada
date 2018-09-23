.class Lcom/android/server/policy/OemGestureButton$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->overridePendingAppTransition(ZLandroid/view/animation/Animation;)V

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener finished: openToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .locals 4

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener: start transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " openToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closeToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v0}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x5

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    :cond_2
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
