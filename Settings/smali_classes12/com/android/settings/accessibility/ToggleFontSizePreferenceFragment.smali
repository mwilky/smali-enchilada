.class public Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# instance fields
.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p0, v4

    if-gez v4, :cond_0

    add-int/lit8 v1, v0, -0x1

    return v1

    :cond_0
    move v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected commit()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    iget v3, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120718

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00a1

    iput v0, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mActivityLayoutResId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d00a2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mPreviewSampleResIds:[I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v3, 0x7f030053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mEntries:[Ljava/lang/String;

    const v3, 0x7f030054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "font_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4, v3}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mInitialIndex:I

    array-length v5, v3

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    nop

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f121225

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
