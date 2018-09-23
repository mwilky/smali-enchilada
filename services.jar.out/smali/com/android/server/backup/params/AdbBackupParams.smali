.class public Lcom/android/server/backup/params/AdbBackupParams;
.super Lcom/android/server/backup/params/AdbParams;
.source "AdbBackupParams.java"


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public includeApks:Z

.field public includeKeyValue:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iput-boolean p2, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iput-boolean p3, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iput-boolean p4, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iput-boolean p5, p0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iput-boolean p6, p0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iput-boolean p7, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iput-boolean p8, p0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iput-boolean p9, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    iput-object p10, p0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    return-void
.end method
