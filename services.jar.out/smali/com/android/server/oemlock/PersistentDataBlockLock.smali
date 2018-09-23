.class Lcom/android/server/oemlock/PersistentDataBlockLock;
.super Lcom/android/server/oemlock/OemLock;
.source "PersistentDataBlockLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    return-void
.end method

.method private disallowUnlockIfNotUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method isOemUnlockAllowedByCarrier()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_oem_unlock"

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isOemUnlockAllowedByDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "OemLock"

    const-string v1, "Signature provided but is not being used"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_oem_unlock"

    xor-int/lit8 v2, p1, 0x1

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;->disallowUnlockIfNotUnlocked()V

    :cond_1
    return-void
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    return-void
.end method
