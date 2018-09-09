.class public Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPerfInfo"
.end annotation


# instance fields
.field public mLevel:Ljava/lang/String;

.field public mMode:I

.field public mPkgName:Ljava/lang/String;

.field public mTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 482
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 486
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 487
    iput p2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 488
    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 489
    iput p4, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 490
    return-void
.end method


# virtual methods
.method public resetValue()V
    .locals 1

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 502
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 504
    return-void
.end method

.method public setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V
    .locals 1
    .param p1, "spi"    # Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 493
    iget-object v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 494
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 495
    iget-object v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 496
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 497
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SPerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
