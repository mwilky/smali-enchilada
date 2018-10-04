.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    array-length v4, p3

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, p3, v3

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 6

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :cond_1
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->access$100(Landroid/graphics/Typeface;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    :goto_0
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_5

    invoke-static {v0}, Landroid/graphics/Typeface;->access$200(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_4
    goto :goto_2

    :cond_5
    iget v2, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v2, v5, :cond_4

    goto :goto_1

    :goto_2
    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->access$300(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v13

    new-instance v6, Landroid/graphics/FontFamily;

    invoke-direct {v6}, Landroid/graphics/FontFamily;-><init>()V

    iget v14, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v15, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v12, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v3

    :cond_1
    :try_start_5
    new-array v4, v4, [Landroid/graphics/FontFamily;

    aput-object v6, v4, v3

    move-object v3, v4

    iget-object v4, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return-object v4

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_3
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/graphics/Typeface;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_a
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_4

    monitor-exit v6

    return-object v0

    :cond_4
    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v9, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    const/4 v11, 0x1

    iget v12, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget v13, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v14, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v15, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object v7, v2

    invoke-virtual/range {v7 .. v15}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    monitor-exit v6

    return-object v3

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    monitor-exit v6

    return-object v3

    :cond_6
    new-array v4, v4, [Landroid/graphics/FontFamily;

    aput-object v2, v4, v3

    move-object v3, v4

    iget-object v4, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, v4

    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :cond_7
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_9
    new-array v2, v4, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v3

    iget-object v3, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_a
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v5, 0x0

    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    array-length v12, v11

    move v13, v3

    move v14, v5

    :goto_2
    if-ge v13, v12, :cond_d

    aget-object v15, v11, v13

    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/nio/ByteBuffer;

    if-nez v16, :cond_b

    goto :goto_3

    :cond_b
    nop

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v8

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v9

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v10

    move-object v5, v0

    move-object/from16 v6, v16

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    return-object v2

    :cond_c
    const/4 v5, 0x1

    move v14, v5

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    if-nez v14, :cond_e

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    return-object v2

    :cond_e
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    new-array v2, v4, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v3

    iget-object v3, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No source was set."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TTC index can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    return-object p0
.end method
