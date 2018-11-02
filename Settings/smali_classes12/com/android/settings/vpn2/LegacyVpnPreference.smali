.class public Lcom/android/settings/vpn2/LegacyVpnPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "LegacyVpnPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setIcon(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setIconSize(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4

    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget v1, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    iget v2, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    sub-int/2addr v1, v2

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int/2addr v1, v3

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    iget v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, -0x1

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04d5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->performClick()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    nop

    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->notifyHierarchyChanged()V

    :cond_2
    iput-object p1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-void
.end method
