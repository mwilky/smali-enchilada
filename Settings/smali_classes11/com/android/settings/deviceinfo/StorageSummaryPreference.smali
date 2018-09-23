.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const v0, 0x7f0d0255

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setPercent(JJ)V
    .locals 3

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    return-void
.end method
