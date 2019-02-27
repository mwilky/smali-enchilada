.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$4800()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$4900(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    return-void
.end method

.method static synthetic access$4000()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4100()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4200()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4300()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4400()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4500()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4600()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4700()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x30

    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_0

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    :cond_0
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->access$5200(J[BI)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    move/from16 v16, v2

    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v3

    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v20

    or-int v3, v3, v20

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v23, v8

    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v23, v8

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    move/from16 v24, v7

    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v7, v8, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    goto :goto_1

    :cond_2
    move/from16 v24, v7

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    instance-of v8, v4, Landroid/content/res/GradientColor;

    if-eqz v8, :cond_3

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    move-object v8, v4

    check-cast v8, Landroid/content/res/GradientColor;

    invoke-virtual {v8}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v8

    move-object/from16 v17, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_4

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_2

    :cond_4
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    :cond_5
    move-object/from16 v8, v17

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object/from16 v39, v3

    instance-of v3, v7, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_6

    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    move-object v3, v7

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    :goto_3
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    move/from16 v23, v3

    move-object/from16 v3, v18

    goto :goto_4

    :cond_8
    move-object/from16 v39, v3

    move-object/from16 v3, v18

    :goto_4
    move/from16 v40, v14

    move/from16 v41, v15

    iget-wide v14, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    const-wide/16 v17, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v25

    move-object/from16 v43, v7

    move-object/from16 v42, v8

    move-wide/from16 v7, v25

    goto :goto_5

    :cond_9
    nop

    move-object/from16 v43, v7

    move-object/from16 v42, v8

    move-wide/from16 v7, v17

    :goto_5
    invoke-static {v14, v15, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v17

    :goto_6
    move-wide/from16 v14, v17

    goto :goto_7

    :cond_a
    goto :goto_6

    :goto_7
    invoke-static {v7, v8, v14, v15}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    const/16 v7, 0xc

    invoke-virtual {v1, v7, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v11, 0xa

    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v11, 0xb

    invoke-virtual {v1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/4 v11, 0x4

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v11, 0x6

    move/from16 v13, v41

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    const/4 v13, 0x7

    move/from16 v14, v24

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    const/4 v14, 0x5

    move/from16 v15, v40

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/16 v15, 0xd

    invoke-virtual {v1, v15, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v45, v3

    move-object/from16 v44, v4

    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v25, v3

    move/from16 v27, v6

    move/from16 v28, v23

    move/from16 v29, v10

    move/from16 v30, v12

    move/from16 v31, v7

    move/from16 v32, v14

    move/from16 v33, v11

    move/from16 v34, v13

    move/from16 v35, v5

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v2

    invoke-static/range {v25 .. v38}, Landroid/graphics/drawable/VectorDrawable;->access$5500(JFIFIFFFFFIII)V

    return-void

    :cond_b
    move/from16 v16, v2

    move/from16 v19, v3

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_3

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method getFillAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6200(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getFillColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6100(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    const/16 v0, 0x108

    return v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getPropertyIndex(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5900(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStrokeColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5600(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStrokeWidth()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5700(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathEnd()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6600(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathOffset()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6800(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathStart()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6400(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onStateChange([I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    if-eq v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    or-int/2addr v0, v5

    if-eq v1, v4, :cond_1

    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    if-eq v1, v4, :cond_2

    move v2, v3

    nop

    :cond_2
    or-int/2addr v0, v2

    if-eq v1, v4, :cond_3

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_3
    return v0
.end method

.method setFillAlpha(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6300(JF)V

    :cond_0
    return-void
.end method

.method setFillColor(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_0
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6000(JF)V

    :cond_0
    return-void
.end method

.method setStrokeColor(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_0
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5800(JF)V

    :cond_0
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6700(JF)V

    :cond_0
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6900(JF)V

    :cond_0
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6500(JF)V

    :cond_0
    return-void
.end method
