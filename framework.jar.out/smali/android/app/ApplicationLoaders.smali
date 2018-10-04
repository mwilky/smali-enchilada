.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method private getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v11

    iget-object v12, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v12

    if-nez p6, :cond_0

    move-object v0, v11

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p6

    :goto_0
    const-wide/16 v14, 0x40

    if-ne v13, v11, :cond_2

    :try_start_0
    iget-object v0, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    monitor-exit v12

    return-object v0

    :cond_1
    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v2, v9

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v13

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v3, "setLayerPaths"

    invoke-static {v14, v15, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :try_start_1
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v3, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :goto_1
    move-object/from16 v2, p8

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    move-object/from16 v2, p8

    :try_start_2
    invoke-static {v9, v0, v13, v2}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v12

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addNativePath(Ljava/util/Collection;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
