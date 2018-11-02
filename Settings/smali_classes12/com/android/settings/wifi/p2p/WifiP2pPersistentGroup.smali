.class public Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
.super Landroid/support/v7/preference/Preference;
.source "WifiP2pPersistentGroup.java"


# instance fields
.field public mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    return v0
.end method
