.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;
.super Landroid/view/Window;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "x0"    # Landroid/content/Context;

    .line 572
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0, p2}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 604
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 0

    .line 588
    return-void
.end method

.method public clearContentView()V
    .locals 0

    .line 608
    return-void
.end method

.method public closeAllPanels()V
    .locals 0

    .line 656
    return-void
.end method

.method public closePanel(I)V
    .locals 0
    .param p1, "featureId"    # I

    .line 634
    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public invalidatePanelMenu(I)V
    .locals 0
    .param p1, "featureId"    # I

    .line 642
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .locals 0

    .line 741
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 665
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .locals 0

    .line 793
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .line 797
    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 630
    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .locals 1

    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public reportActivityRelaunched()V
    .locals 0

    .line 801
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 737
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 1

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 669
    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 745
    return-void
.end method

.method public setChildInt(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 749
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .line 592
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 596
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 600
    return-void
.end method

.method public setDecorCaptionShade(I)V
    .locals 0
    .param p1, "decorCaptionShade"    # I

    .line 785
    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 681
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 685
    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 673
    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 677
    return-void
.end method

.method public setFeatureInt(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 689
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 781
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 789
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 772
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 622
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 626
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .line 758
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .line 579
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 0
    .param p1, "get"    # Z

    .line 693
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .line 575
    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 638
    return-void
.end method
