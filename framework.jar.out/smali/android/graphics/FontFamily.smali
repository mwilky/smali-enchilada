.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mBuilderPtr:J

.field private mNativeBuilderCleaner:Ljava/lang/Runnable;

.field public mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/graphics/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetBuilderReleaseFunc()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/graphics/FontFamily;->sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/graphics/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {}, Landroid/graphics/FontFamily;->nGetFamilyReleaseFunc()J

    move-result-wide v9

    const-wide/16 v11, 0x40

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/graphics/FontFamily;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    sget-object v0, Landroid/graphics/FontFamily;->sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_1

    :cond_1
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    nop

    invoke-static {v0, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    sget-object v1, Landroid/graphics/FontFamily;->sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method private static native nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static nAddFont(JLjava/nio/ByteBuffer;I)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetBuilderReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFamilyReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder(Ljava/lang/String;I)J
.end method


# virtual methods
.method public abortCreation()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-wide v4, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    if-eqz v3, :cond_0

    array-length v7, v3

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    iget-wide v13, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v13, v14, v10, v6}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-wide v13, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move/from16 v16, p2

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v13 .. v18}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return v6

    :catchall_0
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v6

    move-object v6, v0

    :goto_1
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_2
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    sget-object v5, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error mapping font file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to call addFont after freezing."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p8

    iget-wide v2, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-wide v5, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v4 .. v12}, Landroid/graphics/FontFamily;->nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z

    move-result v2

    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to call addFontFromAsset after freezing."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 8

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v4, p1

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freeze()Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/FontFamily;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v4, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-virtual {v0, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
