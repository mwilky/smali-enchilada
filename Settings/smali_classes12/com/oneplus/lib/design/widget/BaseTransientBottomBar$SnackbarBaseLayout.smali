.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout_op_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SnackbarLayout_op_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    return-void
.end method
