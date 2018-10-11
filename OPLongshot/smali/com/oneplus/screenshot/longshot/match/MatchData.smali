.class public Lcom/oneplus/screenshot/longshot/match/MatchData;
.super Ljava/lang/Object;
.source "MatchData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MatchData"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field private mMatched:I

.field private mOffset:I

.field private mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

.field private mRangeLast:Lcom/oneplus/screenshot/longshot/match/MatchRange;

.field private mRate:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mTag:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mMatched:I

    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRate:I

    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mOffset:I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeLast:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mIndex:I

    return-void
.end method


# virtual methods
.method public getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    return-object v0
.end method

.method public getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeLast:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    return-object v0
.end method

.method public getMatched()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mMatched:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mOffset:I

    return v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRate:I

    return v0
.end method

.method public init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V
    .locals 3

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mMatched:I

    iput p7, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRate:I

    iput p8, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mOffset:I

    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mMatched:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchRange;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p4, v1, p2}, Lcom/oneplus/screenshot/longshot/match/MatchRange;-><init>([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeLast:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchRange;

    sub-int v1, p3, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p5, v1, p3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;-><init>([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    if-eqz p9, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/match/MatchData;->mRangeCurr:Lcom/oneplus/screenshot/longshot/match/MatchRange;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getSize()I

    move-result v2

    invoke-virtual {p9, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_0
    return-void
.end method

.method public init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    return-void
.end method
