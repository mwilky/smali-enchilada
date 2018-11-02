.class Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdatePreferences"
.end annotation


# instance fields
.field private alwaysOnAppVpnInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectedAppVpns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectedLegacyVpns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lockdownVpnKey:Ljava/lang/String;

.field private final mSettings:Lcom/android/settings/vpn2/VpnSettings;

.field private vpnApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vpnProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    return-void
.end method


# virtual methods
.method public final appVpns(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;)",
            "Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    return-object p0
.end method

.method public final legacyVpns(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings;->canAddPreferences()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v5, v6}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    goto :goto_1

    :cond_1
    sget v6, Lcom/android/settings/vpn2/LegacyVpnPreference;->STATE_NONE:I

    invoke-virtual {v5, v6}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setAlwaysOn(Z)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/LegacyVpnInfo;

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v6, v5, v3}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v6, v7}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setAlwaysOn(Z)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/AppVpnInfo;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v3, v2}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    goto :goto_5

    :cond_6
    sget v4, Lcom/android/settings/vpn2/AppPreference;->STATE_DISCONNECTED:I

    invoke-virtual {v3, v4}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    :goto_5
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/vpn2/AppPreference;->setAlwaysOn(Z)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/VpnSettings;->setShownPreferences(Ljava/util/Collection;)V

    return-void
.end method
