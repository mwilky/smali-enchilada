.class final Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackupPasswordHash"
.end annotation


# instance fields
.field public hash:Ljava/lang/String;

.field public salt:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    return-void
.end method
