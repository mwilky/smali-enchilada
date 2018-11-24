.class Lcom/android/server/am/ConnorStatistic$BingoStatistic;
.super Ljava/lang/Object;
.source "ConnorStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ConnorStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BingoStatistic"
.end annotation


# static fields
.field private static final RECORD_SIZE:I = 0x32


# instance fields
.field bitSet:Ljava/util/BitSet;

.field private index:I

.field private isWarmUp:Z

.field mCategory:I

.field mLastSPCount:J

.field mLastSPHit:J

.field mPredictNum:I

.field mThreshold:F

.field mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ConnorStatistic;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ConnorStatistic;II)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    iput-boolean v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->isWarmUp:Z

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->bitSet:Ljava/util/BitSet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPCount:J

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPHit:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    iput p2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    iput p3, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    invoke-static {p1}, Lcom/android/server/am/ConnorStatistic;->access$000(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPCount:J

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPHit:J

    invoke-static {p1}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/Connor;->getVersion(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ConnorStatistic;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;-><init>(Lcom/android/server/am/ConnorStatistic;II)V

    iput p4, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    return-void
.end method

.method private getCategoryStr()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "NN_"

    goto :goto_0

    :cond_0
    const-string v1, "MM_"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    if-ne v1, v3, :cond_2

    const-string v1, "1only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v2}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Connor;->getCurrModelLoss()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIndex(F)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getStartProcHit()J
    .locals 4

    iget v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mThreshold:F

    invoke-direct {p0, v1}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getIndex(F)I

    move-result v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v2}, Lcom/android/server/am/ConnorStatistic;->access$200(Lcom/android/server/am/ConnorStatistic;)[J

    move-result-object v2

    aget-wide v2, v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v2}, Lcom/android/server/am/ConnorStatistic;->access$300(Lcom/android/server/am/ConnorStatistic;)[J

    move-result-object v2

    aget-wide v2, v2, v1

    :goto_1
    return-wide v2

    :cond_2
    iget v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$400(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$500(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    :goto_2
    return-wide v1

    :cond_4
    iget v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$600(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$700(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    :goto_3
    return-wide v1

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$800(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$900(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v1

    :goto_4
    return-wide v1
.end method

.method private prepareData()Landroid/content/ContentValues;
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "connor_model_ver"

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connor_model_acc"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connor_model_loss"

    iget v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v2}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Connor;->getCurrModelLoss()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "connor_stat_category"

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCategoryStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connor_predict_num"

    iget v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mPredictNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connor_feed_count"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connor_feed_hit"

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connor_proc_count"

    iget-object v2, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v2}, Lcom/android/server/am/ConnorStatistic;->access$000(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPCount:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "connor_proc_hit"

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getStartProcHit()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPHit:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getCurrHitRate()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->isWarmUp:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRoundedIndex()I
    .locals 4

    iget v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->isWarmUp:Z

    iget-object v1, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v1}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save to db for cate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mCategory:I

    if-ne v3, v0, :cond_0

    const-string v0, "MM"

    goto :goto_0

    :cond_0
    const-string v0, "NN"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/server/am/Connor;->mIsAlpha:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/Connor;->mIsBeta:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v0}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v0}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->prepareData()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/Connor;->saveStatisticToDb(Landroid/content/ContentValues;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v0}, Lcom/android/server/am/ConnorStatistic;->access$000(Lcom/android/server/am/ConnorStatistic;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPCount:J

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->mLastSPHit:J

    :cond_4
    iget v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    return v0
.end method

.method public hit()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v0}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCategoryStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public miss()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->index:I

    iget-object v0, p0, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->this$0:Lcom/android/server/am/ConnorStatistic;

    invoke-static {v0}, Lcom/android/server/am/ConnorStatistic;->access$100(Lcom/android/server/am/ConnorStatistic;)Lcom/android/server/am/Connor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Connor;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Miss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/ConnorStatistic$BingoStatistic;->getCategoryStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
