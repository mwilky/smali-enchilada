.class public abstract Lcom/oneplus/lib/widget/button/OPCompoundButton;
.super Landroid/widget/Button;
.source "OPCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;,
        Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;,
        Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final INDETERMINATE_STATE_SET:[I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mIndeterminate:Z

.field private mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

.field private mThreeState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->state_indeterminate:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->INDETERMINATE_STATE_SET:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_1

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v7}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_threeState:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_checked:I

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_indeterminate:I

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setThreeState(Z)V

    if-eqz v1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    :goto_1
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_radius:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setRadius(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    return-void
.end method

.method private applyButtonTint()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private notifyViewAccessibilityStateChangedIfNeededInternal(I)V
    .locals 6

    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyViewAccessibilityStateChangedIfNeeded"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v2, "notifyViewAccessibilityStateChangedIfNeeded with Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRadius(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v2, "setRaidus fail , background not a rippleDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isThreeState()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->INDETERMINATE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mergeDrawableStates([I[I)[I

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    nop

    :goto_0
    nop

    add-int v6, v4, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    nop

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v0, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollY()I

    move-result v2

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_5
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->threeState:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->indeterminate:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->threeState:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->indeterminate:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->toggle()V

    :goto_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.graphics.drawable.Drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLayoutDirection"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v4, "setLayoutDirection with Exception!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setMinHeight(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    :cond_3
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(ZZ)V

    return-void
.end method

.method public setCheckedInternal(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_5

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->refreshDrawableState()V

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    :cond_5
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnTriStateCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    return-void
.end method

.method public setThreeState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    return-void
.end method

.method protected setTriStateChecked(Ljava/lang/Boolean;)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    if-eq v0, v3, :cond_6

    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(ZZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->refreshDrawableState()V

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Ljava/lang/Boolean;)V

    :cond_5
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    :cond_6
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
