.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mByteBufferStride:J

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field mOwningType:Z

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mTimeStamp:J

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    iput-boolean v3, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    sget-object v4, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v4, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    iput-object v4, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    iput-wide v1, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    and-int/lit16 v1, p5, -0x100

    if-nez v1, :cond_3

    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    and-int/lit8 v1, p5, -0x24

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid usage combination."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    if-eqz p4, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/renderscript/Allocation;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderScript_jni"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unknown usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    iput-boolean p5, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    iput-object p7, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-void
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 23

    move-object/from16 v7, p0

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p2

    const/4 v1, 0x0

    iget-boolean v2, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    iget-object v2, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move/from16 v21, v1

    move-object/from16 v15, p4

    iget v1, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object v1, v7

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v0

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    iget-object v10, v7, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v0

    move-object/from16 v18, p4

    move/from16 v19, v1

    move/from16 v20, v21

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 23

    move-object/from16 v7, p0

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeToUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p2

    const/4 v1, 0x0

    iget-boolean v2, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    iget-object v2, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move/from16 v21, v1

    move-object/from16 v15, p4

    iget v1, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object v1, v7

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v0

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    iget-object v10, v7, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v0

    move-object/from16 v18, p4

    move/from16 v19, v1

    move/from16 v20, v21

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21

    move-object/from16 v1, p0

    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeFromUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p4

    mul-int v0, v0, p5

    mul-int v0, v0, p6

    const/4 v4, 0x0

    move-object/from16 v15, p8

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v7

    if-gt v6, v5, :cond_0

    const/4 v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-gt v0, v5, :cond_2

    :goto_0
    move/from16 v20, v4

    move/from16 v19, v5

    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, v14

    move-object/from16 v14, p7

    move/from16 v15, v19

    move-object/from16 v16, p8

    move/from16 v18, v20

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_2
    :try_start_1
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21

    move-object/from16 v1, p0

    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeToUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p4

    mul-int v0, v0, p5

    mul-int v0, v0, p6

    const/4 v4, 0x0

    move-object/from16 v15, p8

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v7

    if-gt v6, v5, :cond_0

    const/4 v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-gt v0, v5, :cond_2

    :goto_0
    move/from16 v20, v4

    move/from16 v19, v5

    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, v14

    move-object/from16 v14, p7

    move/from16 v15, v19

    move-object/from16 v16, p8

    move/from16 v18, v20

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_2
    :try_start_1
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 14

    move-object v11, p0

    const-wide/32 v12, 0x8000

    :try_start_0
    const-string v0, "copyFromUnchecked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v11, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, v11, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v6, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v7, v11, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v1, v11

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    :cond_0
    iget v0, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, v11

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget v3, v11, Landroid/renderscript/Allocation;->mCurrentCount:I

    move-object v1, v11

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 10

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    iget v3, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v3, p3

    iget v5, p0, Landroid/renderscript/Allocation;->mSize:I

    div-int/lit8 v5, v5, 0x4

    mul-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget v3, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v3, p3

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    if-lt v3, v4, :cond_3

    :goto_0
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v8, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v6, p1

    move-object v7, p2

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_3
    :try_start_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .locals 6

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "createAllocations"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    new-array v2, p3, [Landroid/renderscript/Allocation;

    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    if-gt p3, v3, :cond_0

    aget-object v3, v2, v4

    invoke-virtual {v3, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    goto :goto_0

    :cond_0
    aget-object v3, v2, v4

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Exceeds the max number of Allocations allowed: 16"

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-ge v3, p3, :cond_2

    aget-object v5, v2, v4

    invoke-static {p0, v5}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_3
    :try_start_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Bad Type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    rem-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_5

    div-int/lit8 v0, v11, 0x6

    if-ne v0, v10, :cond_4

    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v12, v0

    if-eqz v12, :cond_3

    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v13

    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, v8, v13}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    move-object v14, v0

    invoke-virtual {v14, v10}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v14, v10}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v14, v2}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne v9, v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v14, v1}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v14}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, v9, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, v8

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v16

    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-eqz v0, :cond_2

    new-instance v18, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object v4, v15

    move/from16 v6, p3

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    return-object v18

    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " element "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only power of 2 cube faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only square cube map faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cubemap height must be multiple of 6"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9

    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v6

    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-direct {v7, v0, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v7, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v7, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v7, v5}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne v1, v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v7}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    move/from16 v5, p8

    invoke-static {v0, v4, v1, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v9

    sget-object v10, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v10}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v11, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v11}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v11, p2

    invoke-virtual {v9, v11}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v12, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v12}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v12, p3

    invoke-virtual {v9, v12}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v13, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v13}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v13, p4

    invoke-virtual {v9, v13}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v14, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v14}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v14, p5

    invoke-virtual {v9, v14}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v15, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v15}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v15, p6

    invoke-virtual {v9, v15}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    return-object v8

    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    const-string v6, "Only power of 2 cube faces supported"

    invoke-direct {v4, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only square cube map faces supported"

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-wide/32 v11, 0x8000

    :try_start_0
    const-string v0, "createFromAllcation"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {v10, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v1

    move v15, v1

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v1

    move-object v8, v1

    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v8, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, v9

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    move-wide/from16 v16, v1

    cmp-long v1, v16, v13

    if-eqz v1, :cond_1

    new-instance v13, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v1, v13

    move-wide/from16 v2, v16

    move-object v4, v9

    move-object v5, v0

    move v7, v15

    move-object v14, v8

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move-object v1, v13

    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_0

    invoke-virtual {v1, v10}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_1
    move-object v14, v8

    :try_start_1
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Allocation creation failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad input Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    const-wide/32 v13, 0x8000

    :try_start_0
    const-string v0, "createFromBitmap"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v9, v0, v11, v12}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v0

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const-wide/16 v7, 0x0

    if-ne v11, v1, :cond_3

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x83

    if-ne v12, v1, :cond_3

    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v11, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, v9

    move-object v5, v10

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    move-wide v15, v1

    cmp-long v1, v15, v7

    if-eqz v1, :cond_2

    new-instance v17, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object/from16 v1, v17

    move-wide v2, v15

    move-object v4, v9

    move-object v5, v0

    move v7, v12

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move-object/from16 v1, v17

    invoke-direct {v1, v10}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_2
    :try_start_2
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Load failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v11, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, v9

    move-object v5, v10

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    move-wide v15, v1

    cmp-long v1, v15, v7

    if-eqz v1, :cond_4

    new-instance v17, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object/from16 v1, v17

    move-wide v2, v15

    move-object v4, v9

    move-object v5, v0

    move v7, v12

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v17

    :cond_4
    :try_start_3
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Load failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    array-length v2, v0

    invoke-static {p0, v1, v2, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Could not convert string to utf-8."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 18

    move-object/from16 v9, p0

    const-wide/32 v10, 0x8000

    :try_start_0
    const-string v0, "createSized"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    new-instance v0, Landroid/renderscript/Type$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v12, p1

    :try_start_1
    invoke-direct {v0, v9, v12}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v0, v13}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    move-object v14, v1

    invoke-virtual {v14, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, v9

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    move-wide v15, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_0

    new-instance v17, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v1, v17

    move-wide v2, v15

    move-object v4, v9

    move-object v5, v14

    move/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v17

    :cond_0
    :try_start_3
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Allocation creation failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-wide/32 v11, 0x8000

    :try_start_0
    const-string v0, "createTyped"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {v10, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_1

    invoke-virtual {v10, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p2

    :try_start_1
    iget v4, v15, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, v9

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v0

    move-wide/from16 v16, v0

    cmp-long v0, v16, v13

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide/from16 v2, v16

    move-object v4, v9

    move-object v5, v10

    move/from16 v7, p3

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v15, p2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_0
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private data1DChecks(IIIIZ)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-gt v0, v1, :cond_3

    if-eqz p5, :cond_1

    div-int/lit8 v0, p4, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p3, p4, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()J
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0
.end method

.method static sendBufferNotification(J)V
    .locals 3

    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {v2, v1}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3

    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v2

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p4, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_1

    add-int v0, p2, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    if-ltz p5, :cond_2

    if-ltz p4, :cond_2

    if-ltz p6, :cond_2

    add-int v0, p1, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_1

    add-int v0, p2, p5

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_1

    add-int v0, p3, p6

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-gt v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    return-void

    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat32()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16OrFloat16()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt32()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt64()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt8()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsObject()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_0
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    if-eqz p2, :cond_6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    if-eqz p2, :cond_8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    if-eqz p2, :cond_a

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_b
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[] is not compatible with data type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v4}, Landroid/renderscript/Element$DataType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of allocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Object passed is not an array of primitives."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "copy1DRangeFrom"

    const-wide/32 v3, 0x8000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v2, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v8, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v8, Landroid/renderscript/Type$CubemapFace;->mID:I

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v8, p1

    move/from16 v12, p2

    move/from16 v19, v13

    move/from16 v13, v16

    move/from16 v16, p4

    move/from16 v18, v2

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 7

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 7

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 7

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 7

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-wide/32 v3, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFrom"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v5, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v0, v2, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v8, v2, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v8, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v19, v13

    move/from16 v13, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v0

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 13

    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    move-object v11, p0

    move-object/from16 v12, p5

    :try_start_1
    invoke-direct {v11, v12, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v3, v11

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v12

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    move-object/from16 v12, p5

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copy2DRangeFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v7, p1

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20

    move-object/from16 v1, p0

    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFromUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p3

    mul-int v0, v0, p4

    const/4 v4, 0x0

    move-object/from16 v15, p6

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p7

    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v7

    if-gt v6, v5, :cond_0

    const/4 v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-gt v0, v5, :cond_2

    :goto_0
    move/from16 v19, v4

    move/from16 v18, v5

    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v7, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v14

    move/from16 v14, v18

    move-object/from16 v15, p6

    move/from16 v17, v19

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_2
    :try_start_1
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 9

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v7

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20

    move-object/from16 v1, p0

    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeToUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p3

    mul-int v0, v0, p4

    const/4 v4, 0x0

    move-object/from16 v15, p6

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p7

    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v7

    if-gt v6, v5, :cond_0

    const/4 v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-gt v0, v5, :cond_2

    :goto_0
    move/from16 v19, v4

    move/from16 v18, v5

    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v7, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v14

    move/from16 v14, v18

    move-object/from16 v15, p6

    move/from16 v17, v19

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_2
    :try_start_1
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "Array too small for allocation type."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    iget v2, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v2

    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 15

    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    move-object v13, p0

    move-object/from16 v14, p7

    :try_start_1
    invoke-direct {v13, v14, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    move-object v3, v13

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v14

    invoke-direct/range {v3 .. v12}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, p0

    move-object/from16 v14, p7

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .locals 13

    nop

    const/4 v0, 0x1

    move-object v11, p0

    move-object/from16 v12, p7

    invoke-direct {v11, v12, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v1, v11

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, v12

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 6

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 11

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v7, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Types of allocations must match."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 4

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom([B)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([F)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([I)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    array-length v2, p1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-ne v2, v3, :cond_3

    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [J

    move v3, v4

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    mul-int/lit8 v5, v3, 0x4

    aget-object v6, p1, v3

    iget-object v7, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    array-length v2, p1

    new-array v2, v2, [I

    move v3, v4

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget-object v5, p1, v3

    iget-object v6, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_3
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom([S)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 4

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFromUnchecked([B)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 5

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([B)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([F)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([I)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([S)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 14

    move-object v0, p0

    move/from16 v11, p4

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v11, v1, :cond_4

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v12

    array-length v10, v12

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, v11

    mul-int v9, v1, v2

    if-ne v10, v9, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v8, v11

    move v0, v9

    move-object v9, v12

    move v13, v10

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    return-void

    :cond_0
    move v0, v9

    move v13, v10

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match component size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset z must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset y must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset x must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    return-void
.end method

.method public generateMipmaps()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const v1, 0x32315659

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v7

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getZ()I

    move-result v8

    move-object v5, v1

    move v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iput-wide v2, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV format is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cubemap is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytesSize()I
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public getStride()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    :cond_0
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    return-object v0

    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 5

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "ioReceive"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public ioSend()V
    .locals 5

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "ioSend"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public declared-synchronized resize(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/Type;->setID(J)V

    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Resize only support for 1D allocations at this time."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Resize is not allowed in API 21+."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAutoPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    return-void
.end method

.method public setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 14

    move-object v0, p0

    move/from16 v11, p4

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v11, v1, :cond_4

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v10

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, v11

    mul-int v9, v1, v2

    if-ne v10, v9, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v8, v11

    move v0, v9

    move-object v9, v12

    move v13, v10

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    return-void

    :cond_0
    move v0, v9

    move v13, v10

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match component size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset z must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset y must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset x must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v2

    div-int v3, v2, v0

    mul-int v4, v0, v3

    if-ne v4, v2, :cond_0

    invoke-virtual {p0, p1, v3, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void

    :cond_0
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 5

    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setupBufferQueue(I)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shareBufferQueue(Landroid/renderscript/Allocation;)V
    .locals 5

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncAll(I)V
    .locals 5

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string/jumbo v2, "syncAll"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Source must be exactly one usage type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget v3, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    nop

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateFromNative()V
    .locals 4

    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    :cond_0
    return-void
.end method
