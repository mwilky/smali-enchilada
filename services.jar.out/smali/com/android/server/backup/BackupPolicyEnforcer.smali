.class public Lcom/android/server/backup/BackupPolicyEnforcer;
.super Ljava/lang/Object;
.source "BackupPolicyEnforcer.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/backup/BackupPolicyEnforcer;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public getMandatoryBackupTransport()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupPolicyEnforcer;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
