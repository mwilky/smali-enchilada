.class Lcom/android/server/am/Connor$3;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 169
    iput-object p1, p0, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 172
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    .line 174
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    iget-object v5, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v5}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 175
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "connor_statistic_table"

    const-string v7, "connor_model_ver"

    const-string v8, "connor_model_acc"

    const-string v9, "connor_model_loss"

    const-string v10, "connor_stat_category"

    const-string v11, "connor_predict_num"

    const-string v12, "connor_feed_count"

    const-string v13, "connor_feed_hit"

    const-string v14, "connor_proc_count"

    const-string v15, "connor_proc_hit"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "uploadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 183
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 184
    .local v5, "ver":I
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 185
    .local v6, "category":I
    const/4 v8, 0x4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 186
    .local v8, "predictNum":I
    const/4 v9, 0x5

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 187
    .local v9, "feedCount":I
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v16, v10

    .line 188
    .local v16, "feedHit":I
    const/4 v10, 0x7

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v17, v10

    .line 189
    .local v17, "startProcCount":I
    const/16 v10, 0x8

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v18, v10

    .line 190
    .local v18, "startProcHit":I
    const-string v10, ""

    .line 191
    .local v10, "key":Ljava/lang/String;
    if-ne v6, v7, :cond_1

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MM_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v10    # "key":Ljava/lang/String;
    .local v7, "key":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v7    # "key":Ljava/lang/String;
    .restart local v10    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "acc":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "loss":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 198
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "loss":Ljava/lang/String;
    .local v7, "key":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/Connor$MDMStatistic;

    move-object v15, v10

    .line 199
    .local v15, "record":Lcom/android/server/am/Connor$MDMStatistic;
    if-eqz v15, :cond_2

    .line 200
    iget v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    add-int/2addr v10, v9

    iput v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    .line 201
    iget v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    add-int v10, v10, v16

    iput v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 202
    iget v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    add-int v10, v10, v17

    iput v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    .line 203
    iget v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    add-int v10, v10, v18

    iput v10, v15, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    goto :goto_2

    .line 205
    :cond_2
    new-instance v14, Lcom/android/server/am/Connor$MDMStatistic;

    iget-object v11, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    move-object v10, v14

    move v12, v9

    move/from16 v13, v16

    move-object v3, v14

    move/from16 v14, v17

    move-object v4, v15

    move/from16 v15, v18

    .line 205
    .end local v15    # "record":Lcom/android/server/am/Connor$MDMStatistic;
    .local v4, "record":Lcom/android/server/am/Connor$MDMStatistic;
    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/Connor$MDMStatistic;-><init>(Lcom/android/server/am/Connor;IIII)V

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v4    # "record":Lcom/android/server/am/Connor$MDMStatistic;
    .end local v5    # "ver":I
    .end local v6    # "category":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "predictNum":I
    .end local v9    # "feedCount":I
    .end local v16    # "feedHit":I
    .end local v17    # "startProcCount":I
    .end local v18    # "startProcHit":I
    :goto_2
    goto/16 :goto_0

    .line 209
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v3, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 210
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 212
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/Connor$MDMStatistic;

    .line 213
    .local v8, "stat":Lcom/android/server/am/Connor$MDMStatistic;
    const-string/jumbo v9, "info"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v9, "connor_feed_count"

    iget v10, v8, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v9, "connor_feed_hit"

    iget v10, v8, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v9, "connor_proc_count"

    iget v10, v8, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v9, "connor_proc_hit"

    iget v10, v8, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v9, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v9}, Lcom/android/server/am/Connor;->access$600(Lcom/android/server/am/Connor;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v9

    const-string v10, "accuracy_statistic"

    invoke-virtual {v9, v10, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    iget-object v9, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v9}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Connor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "report key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 221
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    .line 222
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    .end local v8    # "stat":Lcom/android/server/am/Connor$MDMStatistic;
    :cond_4
    goto/16 :goto_3

    .line 225
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 226
    const-string/jumbo v4, "op_aab"

    invoke-static {v6}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v5

    const/16 v6, 0x9

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v4, "google_aab"

    invoke-static {v7}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$600(Lcom/android/server/am/Connor;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v4

    const-string v5, "accuracy_statistic"

    invoke-virtual {v4, v5, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "delete from connor_statistic_table"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "uploadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    .end local v3    # "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_6

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Connor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while report statistic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_6
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    nop

    .line 240
    return-void

    .line 236
    :goto_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_7
    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
