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

    .line 1990
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;

    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 2012
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 2013
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 2014
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 2015
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 2016
    return-void
.end method

.method public static synthetic lambda$getStringForUser$0(Landroid/provider/Settings$NameValueCache;)V
    .locals 2

    .line 2163
    monitor-enter p0

    .line 2164
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2169
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2170
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2171
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2173
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 2174
    return-void

    .line 2173
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

    .line 2240
    monitor-enter p0

    .line 2241
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2244
    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2246
    monitor-exit p0

    .line 2247
    return-void

    .line 2246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2062
    move/from16 v3, p3

    move v0, v3

    .line 2063
    .local v0, "userId":I
    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    sget-object v4, Landroid/provider/Settings$ParallelSettings;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2064
    const/4 v0, 0x0

    .line 2065
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

    .line 2067
    :cond_0
    move v4, v0

    .line 2067
    .end local v0    # "userId":I
    .local v4, "userId":I
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

    .line 2070
    .local v7, "isSelf":Z
    const/4 v8, -0x1

    .line 2071
    .local v8, "currentGeneration":I
    if-eqz v7, :cond_5

    .line 2072
    monitor-enter p0

    .line 2073
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    .line 2074
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2080
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 2081
    :cond_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2082
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 2084
    :cond_3
    :goto_1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_4

    .line 2085
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    .line 2088
    .end local v8    # "currentGeneration":I
    .local v0, "currentGeneration":I
    move v8, v0

    .line 2088
    .end local v0    # "currentGeneration":I
    .restart local v8    # "currentGeneration":I
    :cond_4
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2094
    :cond_5
    :goto_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v15

    .line 2100
    .local v15, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v0, :cond_f

    .line 2102
    const/4 v0, 0x0

    .line 2103
    .local v0, "args":Landroid/os/Bundle;
    if-nez v7, :cond_6

    .line 2104
    :try_start_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v0, v10

    .line 2105
    const-string v10, "_user"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 2191
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 2107
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_6
    :goto_3
    move-object v10, v0

    .line 2107
    .end local v0    # "args":Landroid/os/Bundle;
    .local v10, "args":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 2108
    .local v11, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2109
    if-eqz v7, :cond_8

    :try_start_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_8

    .line 2110
    const/4 v11, 0x1

    .line 2111
    if-nez v10, :cond_7

    .line 2112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2114
    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    move-object v10, v0

    .line 2114
    .end local v0    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    :cond_7
    const-string v0, "_track_generation"

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2121
    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_8
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2129
    :try_start_3
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-eq v0, v12, :cond_9

    .line 2130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v21, v16

    .line 2132
    .local v21, "token":J
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v12, v2, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2134
    .local v0, "b":Landroid/os/Bundle;
    move-wide/from16 v13, v21

    :try_start_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2135
    .end local v21    # "token":J
    .local v13, "token":J
    nop

    .line 2134
    .end local v13    # "token":J
    nop

    .line 2136
    goto :goto_5

    .line 2134
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v21    # "token":J
    :catchall_2
    move-exception v0

    move-wide/from16 v13, v21

    .line 2134
    .end local v21    # "token":J
    .restart local v13    # "token":J
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2137
    .end local v13    # "token":J
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-interface {v15, v0, v12, v2, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2137
    .restart local v0    # "b":Landroid/os/Bundle;
    :goto_5
    move-object v12, v0

    .line 2139
    .end local v0    # "b":Landroid/os/Bundle;
    .local v12, "b":Landroid/os/Bundle;
    if-eqz v12, :cond_e

    .line 2140
    const-string/jumbo v0, "value"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2142
    .local v13, "value":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 2143
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2144
    if-eqz v11, :cond_b

    .line 2145
    :try_start_6
    const-string v0, "_track_generation"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 2147
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v14, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v12, v14, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2149
    .local v5, "index":I
    if-eqz v0, :cond_b

    if-ltz v5, :cond_b

    .line 2150
    const-string v14, "_generation"

    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2158
    .local v14, "generation":I
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_a

    .line 2159
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 2161
    :cond_a
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v3, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;

    invoke-direct {v3, v1}, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v5, v14, v3}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2161
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v5    # "index":I
    .end local v14    # "generation":I
    goto :goto_6

    .line 2181
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 2177
    :cond_b
    :goto_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2178
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v8, v0, :cond_c

    .line 2179
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
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

    .line 2187
    :cond_d
    :goto_8
    return-object v13

    .line 2194
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "needsGenerationTracker":Z
    .end local v12    # "b":Landroid/os/Bundle;
    .end local v13    # "value":Ljava/lang/String;
    :cond_e
    goto :goto_b

    .line 2121
    .restart local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "needsGenerationTracker":Z
    :goto_9
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2191
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "needsGenerationTracker":Z
    :goto_a
    nop

    .line 2197
    :cond_f
    :goto_b
    const/4 v3, 0x0

    move-object v5, v3

    .line 2199
    .local v5, "c":Landroid/database/Cursor;
    :try_start_a
    const-string/jumbo v0, "name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 2202
    .local v14, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v0, v6, :cond_10

    .line 2203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-wide v12, v10

    .line 2205
    .local v12, "token":J
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

    .line 2205
    .end local v4    # "userId":I
    .end local v12    # "token":J
    .local v3, "token":J
    .local v23, "userId":I
    const/16 v21, 0x0

    move-object v13, v6

    move-object v6, v15

    move-object/from16 v15, v16

    .line 2205
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v6, "cp":Landroid/content/IContentProvider;
    :try_start_c
    invoke-interface/range {v10 .. v15}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v5, v0

    .line 2208
    :try_start_d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2209
    nop

    .line 2210
    .end local v3    # "token":J
    goto :goto_d

    .line 2208
    .restart local v3    # "token":J
    :catchall_4
    move-exception v0

    goto :goto_c

    .line 2208
    .end local v3    # "token":J
    .end local v6    # "cp":Landroid/content/IContentProvider;
    .end local v23    # "userId":I
    .restart local v4    # "userId":I
    .restart local v12    # "token":J
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v4

    move-wide v3, v12

    move-object v6, v15

    .line 2208
    .end local v4    # "userId":I
    .end local v12    # "token":J
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v3    # "token":J
    .restart local v6    # "cp":Landroid/content/IContentProvider;
    .restart local v23    # "userId":I
    :goto_c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2211
    .end local v3    # "token":J
    .end local v6    # "cp":Landroid/content/IContentProvider;
    .end local v23    # "userId":I
    .restart local v4    # "userId":I
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :cond_10
    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object v6, v15

    .line 2211
    .end local v4    # "userId":I
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v6    # "cp":Landroid/content/IContentProvider;
    .restart local v23    # "userId":I
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

    .line 2214
    .end local v5    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    move-object v5, v0

    .line 2214
    .end local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :goto_d
    if-nez v5, :cond_12

    .line 2215
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

    .line 2216
    nop

    .line 2235
    if-eqz v5, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2216
    :cond_11
    return-object v21

    .line 2219
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

    .line 2220
    .local v3, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 2221
    :try_start_f
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 2222
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v8, v0, :cond_14

    .line 2223
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    :cond_14
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 2230
    nop

    .line 2235
    if-eqz v5, :cond_15

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2230
    :cond_15
    return-object v3

    .line 2225
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

    .line 2231
    .end local v3    # "value":Ljava/lang/String;
    .end local v14    # "queryArgs":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    goto :goto_f

    .line 2235
    .end local v6    # "cp":Landroid/content/IContentProvider;
    .end local v23    # "userId":I
    .restart local v4    # "userId":I
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_7
    move-exception v0

    move/from16 v23, v4

    move-object v6, v15

    .line 2235
    .end local v4    # "userId":I
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v6    # "cp":Landroid/content/IContentProvider;
    .restart local v23    # "userId":I
    goto :goto_10

    .line 2231
    .end local v6    # "cp":Landroid/content/IContentProvider;
    .end local v23    # "userId":I
    .restart local v4    # "userId":I
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catch_2
    move-exception v0

    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object v6, v15

    .line 2232
    .end local v4    # "userId":I
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "cp":Landroid/content/IContentProvider;
    .restart local v23    # "userId":I
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

    .line 2233
    nop

    .line 2235
    if-eqz v5, :cond_16

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2233
    :cond_16
    return-object v21

    .line 2235
    .end local v0    # "e":Landroid/os/RemoteException;
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
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I

    .line 2021
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2022
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2024
    if-eqz p4, :cond_0

    .line 2025
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :cond_0
    const/4 v1, 0x1

    if-eqz p5, :cond_1

    .line 2028
    const-string v2, "_make_default"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2030
    :cond_1
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 2031
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2034
    if-nez p6, :cond_3

    sget-object v3, Landroid/provider/Settings$ParallelSettings;->PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 2036
    :try_start_1
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2037
    .local v3, "um":Landroid/os/IUserManager;
    const/16 v4, 0x3e7

    invoke-interface {v3, v4}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2038
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2039
    .local v5, "paraArg":Landroid/os/Bundle;
    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    const-string v6, "_user"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2041
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v2, v4, v6, p2, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2044
    .end local v3    # "um":Landroid/os/IUserManager;
    .end local v5    # "paraArg":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 2043
    :catch_0
    move-exception v3

    .line 2050
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    :cond_3
    :goto_0
    nop

    .line 2051
    return v1

    .line 2047
    :catch_1
    move-exception v0

    .line 2048
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 2049
    const/4 v1, 0x0

    return v1
.end method
