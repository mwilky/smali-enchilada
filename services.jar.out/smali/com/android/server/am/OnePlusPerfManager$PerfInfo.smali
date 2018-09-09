.class public Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfInfo"
.end annotation


# instance fields
.field public mLevel:Ljava/lang/String;

.field public mPerfLock:I

.field public mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 460
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "perfLock"    # I
    .param p3, "level"    # Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 460
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 463
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 464
    iput p2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 465
    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 466
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
