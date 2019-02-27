.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/Instance;

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    array-length v7, v7

    array-length v8, v0

    if-eq v7, v8, :cond_0

    nop

    move/from16 v8, p1

    move/from16 v9, p2

    goto :goto_3

    :cond_0
    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v7, :cond_1

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    move/from16 v9, p2

    invoke-static {v7, v0, v9}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v7

    float-to-double v10, v7

    goto :goto_1

    :cond_1
    move/from16 v9, p2

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    invoke-static {v7, v0}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v7

    float-to-double v10, v7

    :goto_1
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-nez v7, :cond_2

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_2

    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    :goto_2
    iget-object v7, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_4

    :cond_3
    iget-object v14, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    new-instance v7, Landroid/gesture/Prediction;

    invoke-direct {v7, v6, v10, v11}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    sget-object v5, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method
