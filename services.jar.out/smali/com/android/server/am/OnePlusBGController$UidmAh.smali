.class public Lcom/android/server/am/OnePlusBGController$UidmAh;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidmAh"
.end annotation


# instance fields
.field public mDayOfBg_mAh:D

.field public mDayOfFg_mAh:D

.field public mPkgName:Ljava/lang/String;

.field public mTotal_DayOfmAh:D

.field public mUid:I

.field public miSForceStop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDZ)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "dayOfFgmAh"    # D
    .param p5, "dayOfBgmAh"    # D
    .param p7, "iSForceStop"    # Z

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mPkgName:Ljava/lang/String;

    .line 1590
    iput p2, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mUid:I

    .line 1591
    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    .line 1592
    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    .line 1593
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mTotal_DayOfmAh:D

    .line 1594
    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->miSForceStop:Z

    .line 1598
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## UidmAh["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfFg_mAh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->mDayOfBg_mAh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$UidmAh;->miSForceStop:Z

    if-eqz v1, :cond_0

    const-string v1, "F"

    goto :goto_0

    :cond_0
    const-string v1, "K"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
