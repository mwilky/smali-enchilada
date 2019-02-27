.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private mFullScreen:Z

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic lambda$update$0([ILandroid/view/View;IIII)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int v2, p2, p4

    sub-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    sub-int v2, p3, p5

    sub-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected detachFromAnchor()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public getAnimationStyle()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasContentView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hasDecorView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElevation(F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAsDropDown(): anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", xoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    nop

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7d8

    goto :goto_1

    :cond_1
    const/16 v3, 0x3ed

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_3

    const/4 p2, 0x0

    const/4 p3, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p4, v1, Landroid/graphics/Point;->x:I

    if-eq p5, v2, :cond_2

    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p5

    move p3, v3

    :cond_2
    move-object v1, p1

    goto :goto_2

    :cond_3
    if-eqz p6, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p6, Landroid/graphics/Rect;->left:I

    aput v4, v3, v0

    iget v4, p6, Landroid/graphics/Rect;->top:I

    aput v4, v3, v1

    new-instance v4, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    iget v5, p6, Landroid/graphics/Rect;->left:I

    iget v6, p6, Landroid/graphics/Rect;->top:I

    iget v7, p6, Landroid/graphics/Rect;->right:I

    iget v8, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollY(I)V

    new-instance v5, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;

    invoke-direct {v5, v3}, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;-><init>([I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    nop

    move-object v1, v4

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_3

    :cond_5
    if-ne p5, v2, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_3

    :cond_6
    const v0, 0x103030b

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p4}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    invoke-virtual {p0, p5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    invoke-virtual {p0, v1, p2, p3}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_4

    :cond_7
    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    :goto_4
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method
