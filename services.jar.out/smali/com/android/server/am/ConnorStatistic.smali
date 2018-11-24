.class Lcom/android/server/am/ConnorStatistic;
.super Ljava/lang/Object;
.source "ConnorStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ConnorStatistic$BingoStatistic;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_CRITERIA:[F

.field public static final CONFIDENCE_CRITERIA_LEVEL_COUNT:I = 0x4

.field private static final MAX_STAT_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Connor"


# instance fields
.field private mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

.field private mConnor:Lcom/android/server/am/Connor;

.field private mSPCount:J

.field private mSPHitMM:J

.field private mSPHitMM1:[J

.field private mSPHitMM3:J

.field private mSPHitMM5:J

.field private mSPHitNN:J

.field private mSPHitNN1:[J

.field private mSPHitNN3:J

.field private mSPHitNN5:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM5:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM3:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN5:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN3:J

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN1:[J

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM1:[J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPCount:J

    iput-object p1, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPCount:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ConnorStatistic;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM1:[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ConnorStatistic;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN1:[J

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM3:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN3:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM5:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ConnorStatistic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN5:J

    return-wide v0
.end method

.method private noteTop1Bingo(IFZ)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v3, v3, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    if-eqz p3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    goto :goto_2

    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    :goto_3
    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    :goto_4
    return-void
.end method

.method private noteTop1StartProc(IF)V
    .locals 8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN1:[J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM1:[J

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v3, v3, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    aget-wide v6, v1, v2

    add-long/2addr v6, v4

    aput-wide v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN:J

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM:J

    :goto_2
    return-void
.end method


# virtual methods
.method public getHitRateOfMM()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getHitRateOfMM1(I)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    if-ltz p1, :cond_2

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getHitRateOfMM3()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getHitRateOfMM5()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getHitRateOfNN()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getHitRateOfNN1(I)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    if-ltz p1, :cond_2

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getHitRateOfNN3()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getHitRateOfNN5()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCurrHitRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getTop1StatIdx(F)I
    .locals 4

    sget-object v0, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    nop

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    sget-object v2, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public initStatisticMM()V
    .locals 6

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v2, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v4, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    sget-object v5, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v5, v5, v2

    invoke-direct {v4, p0, v1, v1, v5}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;IIF)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initStatisticNN()V
    .locals 7

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    iput-object v3, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN1:[Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    new-instance v5, Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    sget-object v6, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v6, v6, v3

    invoke-direct {v5, p0, v2, v1, v6}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;IIF)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBingoMM(Ljava/lang/String;[Ljava/lang/String;[F)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    array-length v1, p2

    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    invoke-virtual {v1}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MM predict "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    array-length v2, p2

    move v3, v1

    move v1, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v2, :cond_6

    aget-object v5, p2, v1

    const/4 v6, 0x5

    if-lt v3, v6, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    const/4 v1, 0x3

    if-ge v3, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    if-nez v3, :cond_3

    aget v0, p3, v0

    invoke-direct {p0, v4, v0, v4}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    goto :goto_1

    :cond_3
    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    :goto_1
    return v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateMM3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    return v0

    :cond_7
    :goto_3
    return v0
.end method

.method public isBingoNN(Ljava/lang/String;[Ljava/lang/String;[F)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    array-length v1, p2

    if-eqz v1, :cond_7

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    invoke-virtual {v1}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NN predict "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    array-length v2, p2

    move v3, v1

    move v1, v0

    :goto_0
    const/4 v4, 0x2

    if-ge v1, v2, :cond_6

    aget-object v5, p2, v1

    const/4 v6, 0x5

    if-lt v3, v6, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v3, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->hit()V

    if-nez v3, :cond_3

    aget v0, p3, v0

    invoke-direct {p0, v4, v0, v2}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    goto :goto_1

    :cond_3
    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    :goto_1
    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN5:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic;->mBingoRateNN3:Lcom/android/server/am/ConnorStatistic$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->miss()V

    aget v1, p3, v0

    invoke-direct {p0, v4, v1, v0}, Lcom/android/server/am/ConnorStatistic;->noteTop1Bingo(IFZ)V

    return v0

    :cond_7
    :goto_3
    return v0
.end method

.method public noteStartProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 12

    const-string v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/Connor;->getNextMMPrev(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/Connor;->getNextMMConfPrev(I)[F

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    :goto_0
    const/4 v7, 0x3

    const-wide/16 v8, 0x1

    if-ge v3, v4, :cond_3

    aget-object v10, v0, v3

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-ge v6, v7, :cond_1

    iget-wide v3, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM3:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM3:J

    if-nez v6, :cond_1

    aget v3, v2, v5

    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/ConnorStatistic;->noteTop1StartProc(IF)V

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM5:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitMM5:J

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/Connor;->getNextNNPrev(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/ConnorStatistic;->mConnor:Lcom/android/server/am/Connor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/Connor;->getNextNNConfPrev(I)[F

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    move v4, v2

    move v2, v5

    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v6, v0, v2

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-ge v4, v7, :cond_4

    iget-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN3:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN3:J

    if-nez v4, :cond_4

    const/4 v2, 0x2

    aget v3, v1, v5

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ConnorStatistic;->noteTop1StartProc(IF)V

    :cond_4
    iget-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN5:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPHitNN5:J

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPCount:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/server/am/ConnorStatistic;->mSPCount:J

    return-void
.end method
