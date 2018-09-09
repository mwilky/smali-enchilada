.class public Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfLockLevel"
.end annotation


# instance fields
.field private mParam:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->readParam(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private readParam(Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # Ljava/lang/String;

    .line 525
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 526
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 528
    .local v1, "size":I
    :try_start_0
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    .line 529
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 530
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPerfManager;->numberStringToInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception readParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ex->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public getParam()[I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfLockLevel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 544
    const/4 v1, 0x0

    .line 544
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
