.class public Lcom/android/server/backup/params/AdbRestoreParams;
.super Lcom/android/server/backup/params/AdbParams;
.source "AdbRestoreParams.java"


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
