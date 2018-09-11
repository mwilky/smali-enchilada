.class public abstract Lcom/android/settings/datausage/DataUsageBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAG:Ljava/lang/String; = "DataUsageBase"


# instance fields
.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    return-void
.end method

.method private isDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 88
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 112
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 116
    .local v1, "hasEthernet":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 117
    .local v2, "statsSession":Landroid/net/INetworkStatsSession;
    const-wide/16 v9, 0x0

    if-eqz v2, :cond_0

    .line 118
    nop

    .line 119
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    const-wide v7, 0x7fffffffffffffffL

    .line 118
    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v3

    .line 121
    .local v3, "ethernetBytes":J
    invoke-static {v2}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v3    # "ethernetBytes":J
    :cond_0
    nop

    .end local v2    # "statsSession":Landroid/net/INetworkStatsSession;
    move-wide v3, v9

    .restart local v3    # "ethernetBytes":J
    :goto_0
    move-wide v2, v3

    .line 127
    .end local v3    # "ethernetBytes":J
    .local v2, "ethernetBytes":J
    nop

    .line 126
    nop

    .line 130
    if-eqz v1, :cond_1

    cmp-long v4, v2, v9

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 125
    .end local v2    # "ethernetBytes":J
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected isAdmin()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method protected isBandwidthControlEnabled()Z
    .locals 3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsageBase"

    const-string v2, "problem talking with INetworkManagementService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method protected isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # I

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBase;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p2}, Lcom/android/settings/datausage/DataUsageBase;->isDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v2, "network_management"

    .line 56
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 55
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 57
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v2, "netstats"

    .line 58
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    .line 59
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 61
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 63
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 65
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 72
    return-void
.end method
