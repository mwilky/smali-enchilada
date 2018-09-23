.class public Lcom/android/settings/wifi/ConnectedAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "ConnectedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mIsCaptivePortal:Z

.field private mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 0
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-void
.end method


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0202

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04a0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a04a1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04a0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setShowDivider(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1214d2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->notifyChanged()V

    return-void
.end method
