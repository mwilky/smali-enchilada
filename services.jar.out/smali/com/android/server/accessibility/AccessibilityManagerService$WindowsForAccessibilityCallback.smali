.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x5

    return v0

    :sswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    :sswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_2
    :sswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7d5
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7e3
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_3
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7f0 -> :sswitch_1
        0x7f2 -> :sswitch_0
        0x7f4 -> :sswitch_2
        0x7f6 -> :sswitch_2
    .end sparse-switch
.end method

.method private populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    iget v2, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    iget v2, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    :cond_1
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

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
