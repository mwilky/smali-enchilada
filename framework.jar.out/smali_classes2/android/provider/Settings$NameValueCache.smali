.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    return-void
.end method

.method public static synthetic lambda$getStringForUser$0(Landroid/provider/Settings$NameValueCache;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v0, v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    sget-object v4, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Landroid/provider/Settings;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStringForUser: user["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] get value of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' from user["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v6, 0x0

    if-ne v4, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move v7, v0

    const/4 v8, -0x1

    if-eqz v7, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_3
    :goto_1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    move v8, v0

    :cond_4
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v15

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    if-nez v7, :cond_6

    :try_start_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v0, v10

    const-string v10, "_user"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_6
    :goto_3
    move-object v10, v0

    const/4 v11, 0x0

    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_8

    :try_start_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_8

    const/4 v11, 0x1

    if-nez v10, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v10, v0

    :cond_7
    const-string v0, "_track_generation"

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_8
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-eq v0, v12, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v21, v16

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v12, v2, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v13, v21

    :try_start_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    goto :goto_5

    :catchall_2
    move-exception v0

    move-wide/from16 v13, v21

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v12, v2, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_5
    move-object v12, v0

    if-eqz v12, :cond_e

    const-string/jumbo v0, "value"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    if-eqz v7, :cond_d

    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v11, :cond_b

    :try_start_6
    const-string v0, "_track_generation"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    const-string v14, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v12, v14, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v0, :cond_b

    if-ltz v5, :cond_b

    const-string v14, "_generation"

    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_a

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    :cond_a
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v3, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;

    invoke-direct {v3, v1}, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v5, v14, v3}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v8, v0, :cond_c

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit p0

    goto :goto_8

    :goto_7
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_d
    :goto_8
    return-object v13

    :cond_e
    goto :goto_b

    :goto_9
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    nop

    :cond_f
    :goto_b
    const/4 v3, 0x0

    move-object v5, v3

    :try_start_a
    const-string/jumbo v0, "name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v0, v6, :cond_10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-wide v12, v10

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const/16 v16, 0x0

    move-object v10, v15

    move/from16 v23, v4

    move-wide v3, v12

    move-object v12, v0

    const/16 v21, 0x0

    move-object v13, v6

    move-object v6, v15

    move-object/from16 v15, v16

    :try_start_c
    invoke-interface/range {v10 .. v15}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v5, v0

    :try_start_d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v4

    move-wide v3, v12

    move-object v6, v15

    :goto_c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_10
    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object v6, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v18, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    move-object v15, v6

    move-object/from16 v17, v0

    move-object/from16 v19, v14

    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    :goto_d
    if-nez v5, :cond_12

    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    nop

    if-eqz v5, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v21

    :cond_12
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_e

    :cond_13
    move-object/from16 v13, v21

    :goto_e
    move-object v3, v13

    monitor-enter p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v8, v0, :cond_14

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    nop

    if-eqz v5, :cond_15

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v3

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catch_1
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move/from16 v23, v4

    move-object v6, v15

    goto :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object v6, v15

    :goto_f
    :try_start_12
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t get key "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    nop

    if-eqz v5, :cond_16

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_16
    return-object v21

    :catchall_8
    move-exception v0

    :goto_10
    if-eqz v5, :cond_17

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v0
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-eqz p5, :cond_1

    const-string v2, "_make_default"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    if-nez p6, :cond_3

    sget-object v3, Landroid/provider/Settings$ParallelSettings;->PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    const/16 v4, 0x3e7

    invoke-interface {v3, v4}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_user"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v2, v4, v6, p2, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v3

    :cond_3
    :goto_0
    nop

    return v1

    :catch_1
    move-exception v0

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method
