.class public Lcom/oneplus/lib/preference/SeekBarPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setMax(I)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference_android_layout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->preference_widget_seekbar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/oneplus/commonctrl/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x51

    if-eq p2, v0, :cond_1

    const/16 v0, 0x46

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getProgress()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    iget v1, v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    iput v2, v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    iget v2, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    iput v2, v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
