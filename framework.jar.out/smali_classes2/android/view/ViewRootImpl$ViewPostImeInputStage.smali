.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    return-void
.end method

.method private maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$4202(Landroid/view/ViewRootImpl;I)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$4300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$4202(Landroid/view/ViewRootImpl;I)I

    :cond_2
    return-void
.end method

.method private performFocusNavigation(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x42

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x82

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v3

    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    goto :goto_1

    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    :goto_1
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performKeyboardGroupNavigation(I)Z
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :goto_0
    move v4, p1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/16 v4, 0x82

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v1

    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$2500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preViewDispatch(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$2500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const v5, 0x10001

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_9

    return v3

    :cond_9
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    if-eqz v1, :cond_a

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_a
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    const/4 v2, 0x0

    return v2
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    move-object v3, v0

    check-cast v3, Landroid/view/MotionEvent;

    sget-boolean v0, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v4, 0x3

    const/16 v5, 0x32

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_27

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1800(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$2600(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$2700(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_32

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_1

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v12, v10

    move v10, v0

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v8, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v12, v8

    :goto_3
    move v10, v12

    sget-boolean v12, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v12, :cond_0

    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] View: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] Motion: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] Rotation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] Zone: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v14}, Landroid/view/ViewRootImpl;->access$2800(Landroid/view/ViewRootImpl;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] mCheckForGestureButton: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v14}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_4
    const/16 v0, 0x15be

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x190

    cmp-long v15, v15, v17

    if-lez v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3300()I

    move-result v15

    if-eqz v10, :cond_9

    if-ne v10, v6, :cond_5

    goto :goto_5

    :cond_5
    if-eq v10, v8, :cond_6

    if-ne v10, v4, :cond_c

    :cond_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$3400(Landroid/view/ViewRootImpl;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$3400(Landroid/view/ViewRootImpl;)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3500()I

    move-result v15

    :cond_7
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$3000(Landroid/view/ViewRootImpl;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v15

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    const/4 v14, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$3100(Landroid/view/ViewRootImpl;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3600()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$3400(Landroid/view/ViewRootImpl;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$3400(Landroid/view/ViewRootImpl;)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3500()I

    move-result v15

    :cond_a
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$3100(Landroid/view/ViewRootImpl;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v15

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$3000(Landroid/view/ViewRootImpl;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3600()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_c

    const/4 v13, 0x1

    :cond_c
    :goto_6
    if-nez v13, :cond_d

    move v4, v8

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    and-int/2addr v4, v14

    if-eqz v4, :cond_10

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v8}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_e
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_f

    const-string v0, "ViewRootImpl"

    const-string v5, "[GESTURE_BUTTON] trigger!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_b

    :cond_10
    if-nez v14, :cond_12

    if-eqz v13, :cond_11

    goto :goto_8

    :cond_11
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v5, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3200()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    :cond_12
    :goto_8
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_13
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_9
    :try_start_0
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    sget-boolean v6, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v6, :cond_14

    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] 2 dispatch mBackupEventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", handled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    goto :goto_9

    :cond_15
    goto :goto_a

    :catch_0
    move-exception v0

    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    :cond_17
    :goto_b
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_18

    const-string v0, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] reachDistance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", swipeTimeoSlow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v5, 0x1

    return v5

    :cond_19
    move v5, v8

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v5

    :pswitch_1
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    return v4

    :cond_1a
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_1b
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    :goto_c
    :try_start_1
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1d

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    sget-boolean v5, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v5, :cond_1c

    const-string v5, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] 3 dispatch mBackupEventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", handled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1d
    goto :goto_d

    :catch_1
    move-exception v0

    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_d
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_13

    :pswitch_2
    const/4 v4, 0x0

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v12, :cond_1f

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    :goto_e
    goto :goto_f

    :cond_1f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    goto :goto_e

    :goto_f
    const/4 v7, 0x0

    if-eqz v10, :cond_22

    const/4 v8, 0x1

    if-ne v10, v8, :cond_20

    goto :goto_11

    :cond_20
    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8, v5}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2800(Landroid/view/ViewRootImpl;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_10

    :cond_21
    const/4 v5, 0x0

    :goto_10
    goto :goto_12

    :cond_22
    :goto_11
    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v11}, Landroid/view/ViewRootImpl;->access$2900(Landroid/view/ViewRootImpl;)I

    move-result v11

    sub-int/2addr v11, v5

    invoke-static {v8, v11}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2800(Landroid/view/ViewRootImpl;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_23

    const/4 v5, 0x1

    goto :goto_12

    :cond_23
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_26

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v6, :cond_24

    const-string v6, "ViewRootImpl"

    const-string v7, "[GESTURE_BUTTON] Hit Gesture Region !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$3002(Landroid/view/ViewRootImpl;F)F

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$3102(Landroid/view/ViewRootImpl;F)F

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v6, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3200()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v0, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v6, :cond_25

    const-string v6, "ViewRootImpl"

    const-string v7, "[GESTURE_BUTTON] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v6, 0x1

    return v6

    :cond_26
    :goto_13
    goto/16 :goto_1c

    :cond_27
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$3700(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_14

    :cond_28
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    if-eqz v0, :cond_32

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v7, :cond_2b

    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_2a

    if-ne v8, v4, :cond_29

    goto :goto_15

    :cond_29
    const/4 v4, 0x0

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v4, 0x1

    :goto_16
    move v9, v4

    :cond_2b
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1c

    :pswitch_3
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$3800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    return v5

    :pswitch_4
    const/4 v5, 0x1

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$3800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-ne v4, v5, :cond_32

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    goto :goto_1c

    :pswitch_5
    const/4 v11, 0x0

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    if-eqz v9, :cond_2c

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    :goto_17
    goto :goto_18

    :cond_2c
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    goto :goto_17

    :goto_18
    const/4 v10, 0x0

    if-eqz v8, :cond_2f

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2d

    goto :goto_1a

    :cond_2d
    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v11, v5}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2800(Landroid/view/ViewRootImpl;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_19

    :cond_2e
    const/4 v5, 0x0

    :goto_19
    goto :goto_1b

    :cond_2f
    :goto_1a
    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$2900(Landroid/view/ViewRootImpl;)I

    move-result v12

    sub-int/2addr v12, v5

    invoke-static {v11, v12}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2800(Landroid/view/ViewRootImpl;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_30

    const/4 v5, 0x1

    goto :goto_1b

    :cond_30
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_32

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3900()Z

    move-result v10

    if-eqz v10, :cond_31

    const-string v10, "ViewRootImpl"

    const-string v11, "Hit the edge and fullscreen mode, start to dismiss the move events"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v10, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    :cond_32
    :goto_1c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    move v5, v4

    :try_start_2
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v5, v0

    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_33

    const-string v0, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GESTURE_BUTTON] dispatch event: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", handled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_33
    goto :goto_1d

    :catch_2
    move-exception v0

    const-string v4, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {}, Landroid/view/ViewRootImpl;->access$4000()Z

    move-result v4

    if-nez v4, :cond_35

    if-ne v0, v6, :cond_34

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    goto :goto_1e

    :cond_34
    const/4 v6, 0x1

    if-ne v0, v6, :cond_35

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    :cond_35
    :goto_1e
    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4, v3}, Landroid/view/ViewRootImpl;->access$4100(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v4, :cond_36

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v4, :cond_36

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v4, :cond_37

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    goto :goto_1f

    :cond_36
    const/4 v7, 0x1

    :cond_37
    :goto_1f
    if-eqz v5, :cond_38

    move v6, v7

    nop

    :cond_38
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
