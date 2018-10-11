.class public Lcom/google/tagmanager/ExperimentMacroHelper;
.super Ljava/lang/Object;
.source "ExperimentMacroHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 1

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_0

    const-string v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    return-void
.end method

.method private static pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/tagmanager/ExperimentMacroHelper;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    aget-object v6, v2, v5

    iget-object v7, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, "GaExperimentRandom: No key"

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    nop

    move-object/from16 v19, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_0
    iget-object v7, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_1
    iget-wide v9, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v11, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-boolean v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v13, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-ltz v13, :cond_3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v11

    if-lez v13, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v5

    goto :goto_3

    :cond_3
    :goto_2
    cmp-long v13, v9, v11

    if-gtz v13, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    move/from16 v16, v5

    sub-long v4, v11, v9

    long-to-double v4, v4

    mul-double/2addr v13, v4

    long-to-double v4, v9

    add-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_3
    iget-object v4, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    iget-wide v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-lez v5, :cond_6

    const-string v5, "gtm"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "gtm"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "lifetime"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v19, v2

    iget-wide v1, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v13, v2

    invoke-static {v13}, Lcom/google/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move-object/from16 v19, v2

    const/4 v15, 0x0

    const-string v1, "gtm"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v5, "lifetime"

    iget-wide v13, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const-string v2, "GaExperimentRandom: gtm not a map"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object/from16 v19, v2

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v0, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_5

    :cond_7
    move-object/from16 v19, v2

    move/from16 v16, v5

    const/4 v15, 0x0

    const-string v1, "GaExperimentRandom: random range invalid"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    nop

    :goto_5
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v2, v19

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a map value, ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method
