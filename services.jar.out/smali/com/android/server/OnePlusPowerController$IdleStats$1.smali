.class Lcom/android/server/OnePlusPowerController$IdleStats$1;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusPowerController$IdleStats;->recordIdleItemLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

.field final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController$IdleStats;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iput-object p2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v1, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v1, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OnePlusPowerController"

    const-string v3, "Error writing idle items"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v2, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void
.end method
