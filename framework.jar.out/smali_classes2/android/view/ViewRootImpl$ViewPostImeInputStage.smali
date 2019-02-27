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
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .line 5189
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5190
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 5191
    return-void
.end method

.method private maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-eq v0, v2, :cond_0

    .line 5706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 5709
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$4202(Landroid/view/ViewRootImpl;I)I

    .line 5712
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 5713
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$4300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 5715
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$4202(Landroid/view/ViewRootImpl;I)I

    .line 5719
    :cond_2
    return-void
.end method

.method private performFocusNavigation(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 5222
    const/4 v0, 0x0

    .line 5223
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5230
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5231
    const/16 v0, 0x42

    goto :goto_0

    .line 5225
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5226
    const/16 v0, 0x11

    goto :goto_0

    .line 5240
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5241
    const/16 v0, 0x82

    goto :goto_0

    .line 5235
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5236
    const/16 v0, 0x21

    goto :goto_0

    .line 5245
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5246
    const/4 v0, 0x2

    goto :goto_0

    .line 5247
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5248
    const/4 v0, 0x1

    .line 5252
    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    .line 5253
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 5254
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 5255
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 5256
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    .line 5260
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5261
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 5262
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5264
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5267
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5268
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5269
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    .line 5268
    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 5270
    return v3

    .line 5275
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5276
    return v3

    .line 5278
    .end local v2    # "v":Landroid/view/View;
    :cond_5
    goto :goto_1

    .line 5279
    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5280
    return v3

    .line 5284
    .end local v1    # "focused":Landroid/view/View;
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
    .param p1, "direction"    # I

    .line 5288
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 5289
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5290
    return v1

    .line 5292
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 5293
    :cond_1
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 5297
    .local v3, "cluster":Landroid/view/View;
    :goto_0
    move v4, p1

    .line 5298
    .local v4, "realDirection":I
    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v1, :cond_3

    .line 5299
    :cond_2
    const/16 v4, 0x82

    .line 5302
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5304
    invoke-virtual {v3}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5305
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 5306
    return v1

    .line 5309
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 5312
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5313
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 5314
    return v1

    .line 5317
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5737
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5740
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5741
    const/4 v1, 0x1

    return v1

    .line 5743
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5321
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 5323
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$2500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preViewDispatch(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5324
    return v2

    .line 5328
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5329
    return v2

    .line 5332
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 5333
    return v3

    .line 5339
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$2500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5340
    return v2

    .line 5343
    :cond_3
    const/4 v1, 0x0

    .line 5345
    .local v1, "groupNavigationDirection":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 5346
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    .line 5347
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5348
    const/4 v1, 0x2

    goto :goto_0

    .line 5349
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const v5, 0x10001

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5351
    const/4 v1, 0x1

    .line 5356
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    .line 5357
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 5358
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 5359
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 5361
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5362
    return v2

    .line 5364
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5365
    return v3

    .line 5370
    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5371
    return v2

    .line 5373
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5374
    return v3

    .line 5378
    :cond_9
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    .line 5379
    if-eqz v1, :cond_a

    .line 5380
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5381
    return v2

    .line 5384
    :cond_a
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5385
    return v2

    .line 5389
    :cond_b
    const/4 v2, 0x0

    return v2
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 20
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-object/from16 v1, p0

    .line 5393
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    move-object v3, v0

    check-cast v3, Landroid/view/MotionEvent;

    .line 5399
    .local v3, "event":Landroid/view/MotionEvent;
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

    .line 5400
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_32

    .line 5401
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 5402
    .local v9, "action":I
    const/4 v0, 0x0

    .line 5403
    .local v0, "rotation":I
    const/4 v10, 0x0

    .line 5404
    .local v10, "isLandscape":Z
    const/4 v11, 0x0

    .line 5406
    .local v11, "raw":F
    if-eqz v9, :cond_1

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5407
    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    .line 5421
    :cond_0
    :goto_0
    move v12, v10

    move v10, v0

    goto/16 :goto_4

    .line 5408
    :cond_1
    :goto_1
    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 5409
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

    .line 5412
    sget-boolean v12, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v12, :cond_0

    .line 5413
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

    .line 5414
    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] Motion: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    const-string v12, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] Rotation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
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

    .line 5417
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

    .line 5421
    .end local v0    # "rotation":I
    .local v10, "rotation":I
    .local v12, "isLandscape":Z
    :goto_4
    const/16 v0, 0x15be

    packed-switch v9, :pswitch_data_0

    .line 5421
    .end local v9    # "action":I
    .end local v10    # "rotation":I
    .end local v11    # "raw":F
    .end local v12    # "isLandscape":Z
    goto/16 :goto_13

    .line 5467
    .restart local v9    # "action":I
    .restart local v10    # "rotation":I
    .restart local v11    # "raw":F
    .restart local v12    # "isLandscape":Z
    :pswitch_0
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5469
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5471
    const/4 v5, 0x0

    .line 5472
    .local v5, "trigger":Z
    const/4 v13, 0x0

    .line 5473
    .local v13, "swipeTimeoSlow":Z
    const/4 v14, 0x0

    .line 5475
    .local v14, "reachDistance":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x190

    cmp-long v15, v15, v17

    if-lez v15, :cond_4

    .line 5476
    const/4 v13, 0x1

    .line 5479
    :cond_4
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3300()I

    move-result v15

    .line 5481
    .local v15, "threshold":I
    if-eqz v10, :cond_9

    if-ne v10, v6, :cond_5

    goto :goto_5

    .line 5493
    :cond_5
    if-eq v10, v8, :cond_6

    if-ne v10, v4, :cond_c

    .line 5494
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

    .line 5496
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3500()I

    move-result v15

    .line 5498
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

    .line 5499
    const/4 v14, 0x1

    goto :goto_6

    .line 5500
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

    .line 5502
    const/4 v13, 0x1

    goto :goto_6

    .line 5482
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

    .line 5484
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3500()I

    move-result v15

    .line 5487
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

    .line 5488
    const/4 v14, 0x1

    goto :goto_6

    .line 5489
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

    .line 5491
    const/4 v13, 0x1

    .line 5507
    :cond_c
    :goto_6
    if-nez v13, :cond_d

    move v4, v8

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    and-int/2addr v4, v14

    .line 5509
    .end local v5    # "trigger":Z
    .local v4, "trigger":Z
    if-eqz v4, :cond_10

    .line 5511
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v8}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    .line 5513
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5514
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5516
    :cond_e
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_f

    .line 5517
    const-string v0, "ViewRootImpl"

    const-string v5, "[GESTURE_BUTTON] trigger!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    :cond_f
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5521
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_b

    .line 5523
    :cond_10
    if-nez v14, :cond_12

    if-eqz v13, :cond_11

    goto :goto_8

    .line 5546
    :cond_11
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 5548
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5549
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v5, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5550
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5551
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3200()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5551
    .end local v0    # "msg":Landroid/os/Message;
    goto/16 :goto_b

    .line 5525
    :cond_12
    :goto_8
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5526
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v5, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5528
    :cond_13
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 5531
    const/4 v0, 0x0

    .line 5531
    .local v0, "i":I
    :goto_9
    :try_start_0
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 5532
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

    .line 5533
    .local v5, "ishandled":Z
    sget-boolean v6, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v6, :cond_14

    .line 5534
    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] 2 dispatch mBackupEventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5535
    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", handled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5534
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5531
    .end local v5    # "ishandled":Z
    :cond_14
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    goto :goto_9

    .line 5540
    .end local v0    # "i":I
    :cond_15
    goto :goto_a

    .line 5538
    :catch_0
    move-exception v0

    .line 5539
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_16
    :goto_a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5544
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    .line 5545
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5554
    :cond_17
    :goto_b
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_18

    .line 5555
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

    .line 5557
    :cond_18
    const/4 v5, 0x1

    return v5

    .line 5559
    .end local v4    # "trigger":Z
    .end local v13    # "swipeTimeoSlow":Z
    .end local v14    # "reachDistance":Z
    .end local v15    # "threshold":I
    :cond_19
    move v5, v8

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5560
    return v5

    .line 5565
    :pswitch_1
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5567
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5568
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    .line 5569
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5570
    return v4

    .line 5571
    :cond_1a
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5573
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 5574
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5576
    :cond_1b
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5579
    const/4 v0, 0x0

    .line 5579
    .local v0, "i":I
    :goto_c
    :try_start_1
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1d

    .line 5580
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

    .line 5581
    .local v4, "ishandled":Z
    sget-boolean v5, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v5, :cond_1c

    .line 5582
    const-string v5, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] 3 dispatch mBackupEventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5583
    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", handled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5582
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5579
    .end local v4    # "ishandled":Z
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5588
    .end local v0    # "i":I
    :cond_1d
    goto :goto_d

    .line 5586
    :catch_1
    move-exception v0

    .line 5587
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1e
    :goto_d
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5591
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5592
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_13

    .line 5423
    :pswitch_2
    const/4 v4, 0x0

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5424
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    .line 5425
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5426
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5428
    if-eqz v12, :cond_1f

    .line 5429
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 5429
    .end local v11    # "raw":F
    .local v4, "raw":F
    :goto_e
    goto :goto_f

    .line 5431
    .end local v4    # "raw":F
    .restart local v11    # "raw":F
    :cond_1f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    goto :goto_e

    .line 5434
    .end local v11    # "raw":F
    .restart local v4    # "raw":F
    :goto_f
    const/4 v7, 0x0

    .line 5436
    .local v7, "hit":Z
    if-eqz v10, :cond_22

    const/4 v8, 0x1

    if-ne v10, v8, :cond_20

    goto :goto_11

    .line 5442
    :cond_20
    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8, v5}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    .line 5443
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

    .line 5438
    :cond_22
    :goto_11
    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v11}, Landroid/view/ViewRootImpl;->access$2900(Landroid/view/ViewRootImpl;)I

    move-result v11

    sub-int/2addr v11, v5

    invoke-static {v8, v11}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    .line 5439
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

    .line 5446
    .end local v7    # "hit":Z
    .local v5, "hit":Z
    :goto_12
    if-eqz v5, :cond_26

    .line 5447
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$1602(Landroid/view/ViewRootImpl;Z)Z

    .line 5448
    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v6, :cond_24

    .line 5449
    const-string v6, "ViewRootImpl"

    const-string v7, "[GESTURE_BUTTON] Hit Gesture Region !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_24
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$3002(Landroid/view/ViewRootImpl;F)F

    .line 5453
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$3102(Landroid/view/ViewRootImpl;F)F

    .line 5455
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5456
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v6, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5458
    .local v0, "msg":Landroid/os/Message;
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    .line 5459
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {}, Landroid/view/ViewRootImpl;->access$3200()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v0, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5460
    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v6, :cond_25

    .line 5461
    const-string v6, "ViewRootImpl"

    const-string v7, "[GESTURE_BUTTON] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    :cond_25
    const/4 v6, 0x1

    return v6

    .line 5600
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "raw":F
    .end local v5    # "hit":Z
    .end local v9    # "action":I
    .end local v10    # "rotation":I
    .end local v12    # "isLandscape":Z
    :cond_26
    :goto_13
    goto/16 :goto_1c

    .line 5602
    :cond_27
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$3700(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5603
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_14

    :cond_28
    const/4 v0, 0x0

    .line 5605
    .local v0, "isFullScreen":Z
    :goto_14
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    if-eqz v0, :cond_32

    .line 5606
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 5607
    .local v7, "action":I
    const/4 v8, 0x0

    .line 5608
    .local v8, "rotation":I
    const/4 v9, 0x0

    .line 5609
    .local v9, "isLandscape":Z
    const/4 v10, 0x0

    .line 5611
    .local v10, "raw":F
    if-nez v7, :cond_2b

    .line 5612
    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 5613
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

    .line 5618
    :cond_2b
    packed-switch v7, :pswitch_data_1

    .line 5618
    .end local v0    # "isFullScreen":Z
    .end local v7    # "action":I
    .end local v8    # "rotation":I
    .end local v9    # "isLandscape":Z
    .end local v10    # "raw":F
    goto/16 :goto_1c

    .line 5648
    .restart local v0    # "isFullScreen":Z
    .restart local v7    # "action":I
    .restart local v8    # "rotation":I
    .restart local v9    # "isLandscape":Z
    .restart local v10    # "raw":F
    :pswitch_3
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$3800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 5649
    return v5

    .line 5653
    :pswitch_4
    const/4 v5, 0x1

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$3800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-ne v4, v5, :cond_32

    .line 5654
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    goto :goto_1c

    .line 5620
    :pswitch_5
    const/4 v11, 0x0

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    .line 5622
    if-eqz v9, :cond_2c

    .line 5623
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 5623
    .end local v10    # "raw":F
    .restart local v4    # "raw":F
    :goto_17
    goto :goto_18

    .line 5625
    .end local v4    # "raw":F
    .restart local v10    # "raw":F
    :cond_2c
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    goto :goto_17

    .line 5628
    .end local v10    # "raw":F
    .restart local v4    # "raw":F
    :goto_18
    const/4 v10, 0x0

    .line 5630
    .local v10, "hit":Z
    if-eqz v8, :cond_2f

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2d

    goto :goto_1a

    .line 5636
    :cond_2d
    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v11, v5}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    .line 5637
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

    .line 5632
    :cond_2f
    :goto_1a
    iget-object v11, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v12}, Landroid/view/ViewRootImpl;->access$2900(Landroid/view/ViewRootImpl;)I

    move-result v12

    sub-int/2addr v12, v5

    invoke-static {v11, v12}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;I)I

    .line 5633
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

    .line 5640
    .end local v10    # "hit":Z
    .restart local v5    # "hit":Z
    :goto_1b
    if-eqz v5, :cond_32

    .line 5641
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3900()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 5642
    const-string v10, "ViewRootImpl"

    const-string v11, "Hit the edge and fullscreen mode, start to dismiss the move events"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    :cond_31
    iget-object v10, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    .line 5664
    .end local v0    # "isFullScreen":Z
    .end local v4    # "raw":F
    .end local v5    # "hit":Z
    .end local v7    # "action":I
    .end local v8    # "rotation":I
    .end local v9    # "isLandscape":Z
    :cond_32
    :goto_1c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 5665
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 5672
    move v5, v4

    .line 5674
    .local v5, "handled":Z
    :try_start_2
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v5, v0

    .line 5675
    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_33

    .line 5676
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

    .line 5680
    :cond_33
    goto :goto_1d

    .line 5678
    :catch_2
    move-exception v0

    .line 5679
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1d
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5683
    .local v0, "action":I
    invoke-static {}, Landroid/view/ViewRootImpl;->access$4000()Z

    move-result v4

    if-nez v4, :cond_35

    .line 5684
    if-ne v0, v6, :cond_34

    .line 5685
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    goto :goto_1e

    .line 5686
    :cond_34
    const/4 v6, 0x1

    if-ne v0, v6, :cond_35

    .line 5687
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    .line 5688
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    .line 5691
    :cond_35
    :goto_1e
    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    .line 5692
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4, v3}, Landroid/view/ViewRootImpl;->access$4100(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 5693
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 5694
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v4, :cond_36

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v4, :cond_36

    .line 5695
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 5696
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v4, :cond_37

    .line 5697
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    goto :goto_1f

    .line 5700
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
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5722
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5724
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5725
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5726
    :cond_0
    return v2

    .line 5730
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5731
    return v2

    .line 5733
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5211
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5213
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 5214
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5215
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 5216
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 5218
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 5219
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5195
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 5196
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    .line 5198
    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 5199
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 5200
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 5201
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 5202
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 5204
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
