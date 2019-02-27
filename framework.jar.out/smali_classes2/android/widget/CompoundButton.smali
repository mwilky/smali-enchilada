.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mCheckedFromResource:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    sget-object v1, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    :cond_2
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    return-void
.end method

.method private applyButtonTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "checked"

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

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

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

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
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    nop

    :goto_0
    nop

    add-int v6, v4, v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    nop

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v0, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_6

    iget v1, p0, Landroid/widget/CompoundButton;->mScrollX:I

    iget v2, p0, Landroid/widget/CompoundButton;->mScrollY:I

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

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    :cond_0
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    :cond_3
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    iget-object v1, p0, Landroid/widget/CompoundButton;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_3
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    :cond_4
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

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
