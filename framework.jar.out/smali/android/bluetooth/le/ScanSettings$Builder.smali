.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mLegacy:Z

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mPhy:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iput-boolean v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanSettings;
    .locals 12

    new-instance v11, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIZILandroid/bluetooth/le/ScanSettings$1;)V

    return-object v11
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    return-object p0
.end method

.method public setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
