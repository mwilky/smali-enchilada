.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionConnectionManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureConnection()V
    .locals 7

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v5, v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    move-result v2

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :cond_1
    return-void
.end method

.method public ensureNoConnection()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    :cond_1
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method
