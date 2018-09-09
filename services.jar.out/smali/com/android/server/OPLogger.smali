.class public Lcom/android/server/OPLogger;
.super Ljava/lang/Object;
.source "OPLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OPLogger$Slog;
    }
.end annotation


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "diagnosis_heating.txt"

.field private static final sFile:Landroid/util/AtomicFile;


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 50
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "diagnosis_heating.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/OPLogger;->sFile:Landroid/util/AtomicFile;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OPLogger;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/server/OPLogger;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 61
    return-void
.end method
