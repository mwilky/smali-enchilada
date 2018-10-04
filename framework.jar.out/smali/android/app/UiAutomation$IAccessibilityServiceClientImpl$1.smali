.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0

    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1, p1}, Landroid/app/UiAutomation;->access$102(Landroid/app/UiAutomation;I)I

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onAccessibilityButtonClicked()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/app/UiAutomation;->access$202(Landroid/app/UiAutomation;J)J

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->access$300(Landroid/app/UiAutomation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->access$600(Landroid/app/UiAutomation;)Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;->INSTANCE:Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 0

    return-void
.end method

.method public onGesture(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 0

    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 0

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 0

    return-void
.end method
