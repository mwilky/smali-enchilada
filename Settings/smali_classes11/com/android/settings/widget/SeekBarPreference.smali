.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityRangeInfoType:I

.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mMax:I

.field private mMin:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContentDescription:Ljava/lang/CharSequence;

.field private mShouldBlink:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    const v0, 0x7f0402b5

    const v1, 0x11100bd

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    .local v1, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 62
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    const v2, 0x10900c6

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 70
    .local v0, "layoutResId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setLayoutResource(I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SeekBarPreference;

    .line 39
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    return v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 119
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 120
    .local v1, "centerY":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 122
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    .line 125
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .line 219
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 220
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 222
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    .line 223
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 225
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 226
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->persistInt(I)Z

    .line 228
    if-eqz p2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 232
    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 97
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 98
    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 100
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v1, v1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 114
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 116
    .local v1, "v":Landroid/view/View;
    new-instance v2, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;-><init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 160
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 165
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 166
    return v1

    .line 168
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 255
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_1

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 258
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 318
    return-void

    .line 322
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    .line 323
    .local v0, "myState":Lcom/android/settings/widget/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 324
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 325
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 326
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 328
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 299
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 300
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    return-object v0

    .line 306
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 307
    .local v1, "myState":Lcom/android/settings/widget/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    .line 308
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    .line 309
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    .line 310
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 149
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 151
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 263
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 268
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setAccessibilityRangeInfoType(I)V
    .locals 0
    .param p1, "rangeInfoType"    # I

    .line 281
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 282
    return-void
.end method

.method public setContinuousUpdates(Z)V
    .locals 0
    .param p1, "continuousUpdates"    # Z

    .line 215
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    .line 216
    return-void
.end method

.method public setDefaultProgress(I)V
    .locals 2
    .param p1, "defaultProgress"    # I

    .line 201
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    if-eq v0, p1, :cond_0

    .line 202
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    .line 203
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v0, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 172
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 173
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 176
    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .line 179
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    .line 180
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 183
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    .line 195
    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 285
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    .line 286
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setShouldBlink(Z)V
    .locals 0
    .param p1, "shouldBlink"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 92
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 243
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 244
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0

    .line 248
    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 251
    :cond_1
    :goto_0
    return-void
.end method
