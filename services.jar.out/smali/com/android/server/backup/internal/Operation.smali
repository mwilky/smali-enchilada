.class public Lcom/android/server/backup/internal/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field public final callback:Lcom/android/server/backup/BackupRestoreTask;

.field public state:I

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/android/server/backup/BackupRestoreTask;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/backup/internal/Operation;->state:I

    iput-object p2, p0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    iput p3, p0, Lcom/android/server/backup/internal/Operation;->type:I

    return-void
.end method
