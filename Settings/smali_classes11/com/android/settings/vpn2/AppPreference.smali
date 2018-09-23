.class public Lcom/android/settings/vpn2/AppPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "AppPreference.java"


# static fields
.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_DISCONNECTED:I


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/settings/vpn2/AppPreference;->STATE_NONE:I

    sput v0, Lcom/android/settings/vpn2/AppPreference;->STATE_DISCONNECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-super {p0, p2}, Lcom/android/settings/vpn2/ManageablePreference;->setUserId(I)V

    iput-object p3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    move-object v1, p3

    nop

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    iget-object v5, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    iput-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getUserContext()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4

    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    iget v1, v0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    iget v2, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    sub-int/2addr v1, v2

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mUserId:I

    iget v3, v0, Lcom/android/settings/vpn2/AppPreference;->mUserId:I

    sub-int v2, v1, v3

    :cond_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v1

    neg-int v1, v1

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
