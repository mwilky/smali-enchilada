.class Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field mDirPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 503
    const/16 p1, 0xfff

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 496
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    .line 504
    iput-object p2, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    .line 505
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 509
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 510
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]:FileObserverPolicy.onEvent(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    if-nez p2, :cond_1

    .line 514
    return-void

    .line 517
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]:FileObserverPolicy.onEvent(): not exists -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    const/16 v4, 0x8

    if-ne p1, v4, :cond_4

    move v2, v3

    nop

    :cond_4
    or-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 524
    const-string v1, "bpm_sts.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_5

    .line 525
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 527
    :cond_5
    const-string/jumbo v1, "pkg.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 528
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x67

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 530
    :cond_6
    const-string v1, "brd.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 531
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    :cond_7
    :goto_1
    return-void
.end method
