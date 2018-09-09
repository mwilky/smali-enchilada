.class Lcom/android/server/am/Connor$BingoStatistic;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
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

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;
    .param p2, "category"    # I
    .param p3, "predictNum"    # I

    .line 1093
    iput-object p1, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1086
    iput-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    .line 1087
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    .line 1090
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1091
    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1094
    iput p2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    .line 1095
    iput p3, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    .line 1096
    invoke-static {p1}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1097
    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1098
    return-void
.end method

.method private getStartProcHit()J
    .locals 3

    .line 1147
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2800(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2900(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 1148
    :cond_1
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$3000(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$3100(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method private prepareData()Landroid/content/ContentValues;
    .locals 6

    .line 1133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1134
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "connor_model_ver"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    const-string v1, "connor_model_acc"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2600(Lcom/android/server/am/Connor;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    const-string v1, "connor_model_loss"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2700(Lcom/android/server/am/Connor;)F

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1137
    const-string v1, "connor_stat_category"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1138
    const-string v1, "connor_predict_num"

    iget v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->mPredictNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    const-string v1, "connor_feed_count"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    const-string v1, "connor_feed_hit"

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    const-string v1, "connor_proc_count"

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1142
    const-string v1, "connor_proc_hit"

    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1143
    return-object v0
.end method


# virtual methods
.method public getCurrHitRate()F
    .locals 2

    .line 1127
    iget-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRoundedIndex()I
    .locals 4

    .line 1111
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->isWarmUp:Z

    .line 1114
    iget-object v1, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save to db for cate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Connor$BingoStatistic;->mCategory:I

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

    .line 1115
    :cond_1
    invoke-static {}, Lcom/android/server/am/Connor;->access$1700()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/am/Connor;->access$1800()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Connor$RecordStatistic;

    iget-object v2, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->prepareData()Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/Connor$RecordStatistic;-><init>(Lcom/android/server/am/Connor;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2500(Lcom/android/server/am/Connor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPCount:J

    .line 1121
    invoke-direct {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getStartProcHit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->mLastSPHit:J

    .line 1123
    :cond_4
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    return v0
.end method

.method public hit()V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1102
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1103
    return-void
.end method

.method public miss()V
    .locals 3

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->bitSet:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/server/am/Connor$BingoStatistic;->getRoundedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1107
    iget v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Connor$BingoStatistic;->index:I

    .line 1108
    return-void
.end method
