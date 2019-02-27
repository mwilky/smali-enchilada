.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method constructor <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;

    .line 1314
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1312
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1315
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1316
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1317
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1299
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method


# virtual methods
.method applyStyle(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1338
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1339
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/content/res/AssetManager;->applyStyleToTheme(JIZ)V

    .line 1340
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1341
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 1342
    monitor-exit v0

    .line 1343
    return-void

    .line 1342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1417
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1418
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 1419
    monitor-exit v0

    .line 1420
    return-void

    .line 1419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1321
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1322
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1323
    return-void
.end method

.method getAllAttributes()[I
    .locals 2

    .line 1405
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    .line 1334
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method getChangingConfigurations()I
    .locals 3

    .line 1409
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1411
    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->nativeThemeGetChangingConfigurations(J)I

    move-result v1

    .line 1412
    .local v1, "nativeChangingConfig":I
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1413
    .end local v1    # "nativeChangingConfig":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    .line 1326
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    .line 1330
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method getTheme()[Ljava/lang/String;
    .locals 9

    .line 1423
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1424
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v1, v1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1425
    .local v1, "N":I
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1426
    .local v2, "themes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1426
    .local v3, "i":I
    add-int/lit8 v4, v1, -0x1

    .line 1426
    .local v4, "j":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 1427
    iget-object v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v5, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v5, v4

    .line 1428
    .local v5, "resId":I
    iget-object v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v6, v6, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v6, v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    .local v6, "forced":Z
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v7, v5}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1433
    goto :goto_1

    .line 1431
    :catch_0
    move-exception v7

    .line 1432
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 1434
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    add-int/lit8 v7, v3, 0x1

    if-eqz v6, :cond_0

    const-string v8, "forced"

    goto :goto_2

    :cond_0
    const-string/jumbo v8, "not forced"

    :goto_2
    aput-object v8, v2, v7

    .line 1426
    .end local v5    # "resId":I
    .end local v6    # "forced":Z
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1436
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1437
    .end local v1    # "N":I
    .end local v2    # "themes":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 19
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v1, p0

    .line 1362
    iget-object v2, v1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v2

    .line 1363
    move-object/from16 v14, p3

    :try_start_0
    array-length v0, v14

    .line 1364
    .local v0, "len":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v15, v3

    .line 1370
    .local v15, "array":Landroid/content/res/TypedArray;
    move-object/from16 v3, p2

    check-cast v3, Landroid/content/res/XmlBlock$Parser;

    move-object v12, v3

    .line 1371
    .local v12, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v3, v1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v4, v1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v10, v15, Landroid/content/res/TypedArray;->mDataAddress:J

    iget-wide v8, v15, Landroid/content/res/TypedArray;->mIndicesAddress:J

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v16, v8

    move-object v8, v12

    move-object v9, v14

    move/from16 v18, v0

    move-object v0, v12

    move-wide/from16 v12, v16

    .end local v12    # "parser":Landroid/content/res/XmlBlock$Parser;
    .local v0, "parser":Landroid/content/res/XmlBlock$Parser;
    .local v18, "len":I
    invoke-virtual/range {v3 .. v13}, Landroid/content/res/AssetManager;->applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    move-object/from16 v3, p1

    :try_start_1
    iput-object v3, v15, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1374
    iput-object v0, v15, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1375
    monitor-exit v2

    return-object v15

    .line 1376
    .end local v0    # "parser":Landroid/content/res/XmlBlock$Parser;
    .end local v15    # "array":Landroid/content/res/TypedArray;
    .end local v18    # "len":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method rebase()V
    .locals 7

    .line 1446
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->nativeThemeClear(J)V

    .line 1450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v2, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v1, v2, :cond_0

    .line 1451
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v2, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v2, v2, v1

    .line 1452
    .local v2, "resId":I
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v3, v3, v1

    .line 1453
    .local v3, "force":Z
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/content/res/AssetManager;->applyStyleToTheme(JIZ)V

    .line 1450
    .end local v2    # "resId":I
    .end local v3    # "force":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1456
    return-void

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 7
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1399
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .locals 12
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    .line 1383
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1384
    :try_start_0
    array-length v1, p3

    .line 1385
    .local v1, "len":I
    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne v1, v2, :cond_0

    .line 1390
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1391
    .local v2, "array":Landroid/content/res/TypedArray;
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v10, v2, Landroid/content/res/TypedArray;->mData:[I

    iget-object v11, v2, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v11}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1392
    iput-object p1, v2, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1393
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1394
    monitor-exit v0

    return-object v2

    .line 1386
    .end local v2    # "array":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base attribute values must the same length as attrs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    .end local v1    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 6
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1346
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v0

    .line 1347
    :try_start_0
    iget-object v1, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1348
    :try_start_1
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v4, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJ)V

    .line 1350
    iget v2, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    iput v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1351
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1352
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1354
    return-void

    .line 1352
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1353
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
