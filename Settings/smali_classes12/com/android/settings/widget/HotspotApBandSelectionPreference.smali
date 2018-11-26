.class public Lcom/android/settings/widget/HotspotApBandSelectionPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "HotspotApBandSelectionPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;
    }
.end annotation


# static fields
.field static final KEY_CHECKED_BANDS:Ljava/lang/String; = "checked_bands"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_HOTSPOT_SUPER_STATE:Ljava/lang/String; = "hotspot_super_state"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final UNSET:I = -0x80000000


# instance fields
.field private mBandEntries:[Ljava/lang/String;

.field mBox2G:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mBox5G:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mExistingConfigValue:I

.field mRestoredBands:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mShouldRestore:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method private addApBandViews(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f0a00ac

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private isBandPreviouslySelected(I)Z
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    if-ne p1, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :pswitch_1
    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreBandIfNeeded(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->isBandPreviouslySelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePositiveButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method getWifiBand()I
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wifi Config only supports selecting one or all bands"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->addApBandViews(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getWifiBand()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    iput-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    iget-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    iget-boolean v1, v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    nop

    :cond_2
    iput-boolean v3, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method public setExistingConfigValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method
