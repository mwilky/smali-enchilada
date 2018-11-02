.class public Lcom/android/settings/slices/SlicesDatabaseAccessor;
.super Ljava/lang/Object;
.source "SlicesDatabaseAccessor.java"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;


# instance fields
.field private final TRUE:I

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "platform_slice"

    const-string v9, "slice_type"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->TRUE:I

    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    return-void
.end method

.method private buildKeyMatchWhereClause()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;
    .locals 11

    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screentitle"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "keywords"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "fragment"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "controller"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "platform_slice"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    move v8, v9

    const-string v9, "slice_type"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz p3, :cond_1

    const/4 v9, 0x0

    :cond_1
    new-instance v10, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v10}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    invoke-virtual {v10, v0}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/settings/slices/SliceData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/android/settings/slices/SliceData$Builder;->setUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/settings/slices/SliceData$Builder;->setPlatformDefined(Z)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v10

    return-object v10
.end method

.method private getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildKeyMatchWhereClause()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v1, "slices_index"

    sget-object v2, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v3, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    if-gt v1, v10, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should not match more than 1 slice with path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Slices key from path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private verifyIndexing()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/slices/SlicesFeatureProvider;->indexSliceData(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public getSliceDataFromKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;

    move-result-object v1

    return-object v1
.end method

.method public getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;
    .locals 3

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;

    move-result-object v2

    return-object v2
.end method

.method public getSliceKeys(Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    if-eqz p1, :cond_0

    const-string v0, "platform_slice = 1"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "platform_slice = 0"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "key"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    const-string v2, "slices_index"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    nop

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v5
.end method
