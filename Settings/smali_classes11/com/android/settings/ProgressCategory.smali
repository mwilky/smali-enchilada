.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d01f5

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d01f5

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d01f5

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d01f5

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0466

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-nez v4, :cond_4

    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    const v5, 0x7f0d01e7

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget v5, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_4

    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_6
    :goto_4
    return-void
.end method

.method public setEmptyTextRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    return-void
.end method
