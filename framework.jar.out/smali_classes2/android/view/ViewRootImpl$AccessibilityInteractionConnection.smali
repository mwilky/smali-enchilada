.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    move/from16 v3, p4

    move-object/from16 v4, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p4

    move-object/from16 v4, p5

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    move/from16 v3, p5

    move-object/from16 v4, p6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v3, p5

    move-object/from16 v4, p6

    :try_start_0
    invoke-interface {v4, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
