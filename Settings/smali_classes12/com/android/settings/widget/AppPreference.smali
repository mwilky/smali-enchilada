.class public Lcom/android/settings/widget/AppPreference;
.super Landroid/support/v7/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01e8

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d01e8

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0535

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->notifyChanged()V

    return-void
.end method
