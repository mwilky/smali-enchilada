.class Landroid/accessibilityservice/AccessibilityService$2;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$002(Landroid/accessibilityservice/AccessibilityService;I)I

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p2}, Landroid/accessibilityservice/AccessibilityService;->access$202(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$800(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onAccessibilityButtonClicked()V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$700(Landroid/accessibilityservice/AccessibilityService;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$500(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$600(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onGesture(I)Z
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    move-result v0

    return v0
.end method

.method public onInterrupt()V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService;->access$300(Landroid/accessibilityservice/AccessibilityService;Landroid/graphics/Region;FFF)V

    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)V

    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$400(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method
