.class public final Landroid/media/audiofx/DynamicsProcessing;
.super Landroid/media/audiofx/AudioEffect;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/DynamicsProcessing$Settings;,
        Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;,
        Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;,
        Landroid/media/audiofx/DynamicsProcessing$Config;,
        Landroid/media/audiofx/DynamicsProcessing$Channel;,
        Landroid/media/audiofx/DynamicsProcessing$Limiter;,
        Landroid/media/audiofx/DynamicsProcessing$Mbc;,
        Landroid/media/audiofx/DynamicsProcessing$Eq;,
        Landroid/media/audiofx/DynamicsProcessing$MbcBand;,
        Landroid/media/audiofx/DynamicsProcessing$EqBand;,
        Landroid/media/audiofx/DynamicsProcessing$BandBase;,
        Landroid/media/audiofx/DynamicsProcessing$BandStage;,
        Landroid/media/audiofx/DynamicsProcessing$Stage;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x20

.field private static final CHANNEL_DEFAULT_INPUT_GAIN:F = 0.0f

.field private static final CONFIG_DEFAULT_MBC_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_POSTEQ_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_PREEQ_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_USE_LIMITER:Z = true

.field private static final CONFIG_DEFAULT_USE_MBC:Z = true

.field private static final CONFIG_DEFAULT_USE_POSTEQ:Z = true

.field private static final CONFIG_DEFAULT_USE_PREEQ:Z = true

.field private static final CONFIG_DEFAULT_VARIANT:I = 0x0

.field private static final CONFIG_PREFERRED_FRAME_DURATION_MS:F = 10.0f

.field private static final DEFAULT_MAX_FREQUENCY:F = 20000.0f

.field private static final DEFAULT_MIN_FREQUENCY:F = 220.0f

.field private static final EQ_DEFAULT_GAIN:F = 0.0f

.field private static final LIMITER_DEFAULT_ATTACK_TIME:F = 1.0f

.field private static final LIMITER_DEFAULT_ENABLED:Z = true

.field private static final LIMITER_DEFAULT_LINK_GROUP:I = 0x0

.field private static final LIMITER_DEFAULT_POST_GAIN:F = 0.0f

.field private static final LIMITER_DEFAULT_RATIO:F = 10.0f

.field private static final LIMITER_DEFAULT_RELEASE_TIME:F = 60.0f

.field private static final LIMITER_DEFAULT_THRESHOLD:F = -2.0f

.field private static final MBC_DEFAULT_ATTACK_TIME:F = 3.0f

.field private static final MBC_DEFAULT_ENABLED:Z = true

.field private static final MBC_DEFAULT_EXPANDER_RATIO:F = 1.0f

.field private static final MBC_DEFAULT_KNEE_WIDTH:F = 0.0f

.field private static final MBC_DEFAULT_NOISE_GATE_THRESHOLD:F = -90.0f

.field private static final MBC_DEFAULT_POST_GAIN:F = 0.0f

.field private static final MBC_DEFAULT_PRE_GAIN:F = 0.0f

.field private static final MBC_DEFAULT_RATIO:F = 1.0f

.field private static final MBC_DEFAULT_RELEASE_TIME:F = 80.0f

.field private static final MBC_DEFAULT_THRESHOLD:F = -45.0f

.field private static final PARAM_ENGINE_ARCHITECTURE:I = 0x30

.field private static final PARAM_GET_CHANNEL_COUNT:I = 0x10

.field private static final PARAM_INPUT_GAIN:I = 0x20

.field private static final PARAM_LIMITER:I = 0x70

.field private static final PARAM_MBC:I = 0x50

.field private static final PARAM_MBC_BAND:I = 0x55

.field private static final PARAM_POST_EQ:I = 0x60

.field private static final PARAM_POST_EQ_BAND:I = 0x65

.field private static final PARAM_PRE_EQ:I = 0x40

.field private static final PARAM_PRE_EQ_BAND:I = 0x45

.field private static final POSTEQ_DEFAULT_ENABLED:Z = true

.field private static final PREEQ_DEFAULT_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "DynamicsProcessing"

.field public static final VARIANT_FAVOR_FREQUENCY_RESOLUTION:I = 0x0

.field public static final VARIANT_FAVOR_TIME_RESOLUTION:I = 0x1

.field private static final mMaxFreqLog:F

.field private static final mMinFreqLog:F


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

.field private mChannelCount:I

.field private mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x406b800000000000L    # 220.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    const-wide v0, 0x40d3880000000000L    # 20000.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/audiofx/DynamicsProcessing;-><init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V

    return-void
.end method

.method public constructor <init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 12

    sget-object v0, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v1, "DynamicsProcessing"

    const-string v2, "WARNING: attaching a DynamicsProcessing to global output mix isdeprecated!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v1

    iput v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-nez p3, :cond_1

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    invoke-direct {v1, v2, p3}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V

    :goto_0
    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getVariant()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreferredFrameDuration()F

    move-result v4

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPreEqInUse()Z

    move-result v5

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreEqBandCount()I

    move-result v6

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->isMbcInUse()Z

    move-result v7

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getMbcBandCount()I

    move-result v8

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPostEqInUse()Z

    move-result v9

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPostEqBandCount()I

    move-result v10

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config;->isLimiterInUse()Z

    move-result v11

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/audiofx/DynamicsProcessing;->setEngineArchitecture(IFZIZIZIZ)V

    nop

    :goto_1
    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    return v0
.end method

.method static synthetic access$100()F
    .locals 1

    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    return-object v0
.end method

.method private byteArrayToNumberArray([B[Ljava/lang/Number;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToInt([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 v0, v0, 0x4

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_0
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([BI)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    array-length v2, p2

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "only converted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " values out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getOneInt(I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array v0, v0, [I

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    aget v2, v0, v2

    return v2
.end method

.method private getTwoFloat(II)F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    invoke-static {v1}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([B)F

    move-result v2

    return v2
.end method

.method private numberArrayToByteArray([Ljava/lang/Number;)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown value type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    nop

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_5

    aget-object v3, p1, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_3
    aget-object v3, p1, v1

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result v2

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v12

    invoke-direct/range {p0 .. p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v13

    const/16 v3, 0x60

    invoke-direct {v0, v3, v1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v15

    new-instance v16, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-virtual {v12}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v5

    invoke-virtual {v12}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v6

    invoke-virtual {v13}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v7

    invoke-virtual {v13}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v8

    invoke-virtual {v14}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v9

    invoke-virtual {v14}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v10

    invoke-virtual {v15}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v11

    move-object/from16 v3, v16

    move v4, v2

    invoke-direct/range {v3 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    invoke-virtual {v3, v2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    invoke-virtual {v3, v12}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    invoke-virtual {v3, v13}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    invoke-virtual {v3, v14}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    invoke-virtual {v3, v15}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-object v3
.end method

.method private queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v2

    invoke-direct {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    new-instance v7, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    move v3, v4

    nop

    :cond_0
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-direct {v7, v3, v4, v5}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    return-object v7
.end method

.method private queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x60

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    invoke-direct {p0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {p0, v7, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v8, Landroid/media/audiofx/DynamicsProcessing$Eq;

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-direct {v8, v9, v5, v0}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    move-object v5, v8

    nop

    :goto_3
    if-ge v4, v0, :cond_4

    if-ne p1, v2, :cond_3

    const/16 v8, 0x45

    goto :goto_4

    :cond_3
    const/16 v8, 0x65

    :goto_4
    invoke-direct {p0, v8, p2, v4}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-object v5
.end method

.method private queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v3, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v3, v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v3, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x6

    aput-object v7, v3, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v3, v7

    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {v0, v12, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    new-instance v22, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    aget-object v13, v3, v4

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-lez v13, :cond_0

    move v14, v5

    goto :goto_0

    :cond_0
    move v14, v4

    :goto_0
    aget-object v13, v3, v5

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-lez v13, :cond_1

    move v15, v5

    goto :goto_1

    :cond_1
    move v15, v4

    :goto_1
    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v16

    aget-object v1, v3, v8

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v17

    aget-object v1, v3, v9

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v1, v3, v10

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v11

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    aget-object v1, v3, v7

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    move-object/from16 v13, v22

    invoke-direct/range {v13 .. v21}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    return-object v22
.end method

.method private queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v3, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v3, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v11, 0x6

    aput-object v8, v3, v11

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v3, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v14, 0x9

    aput-object v8, v3, v14

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v3, v8

    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v7

    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v15

    invoke-virtual {v0, v7, v15}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {v0, v15, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    new-instance v28, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    move/from16 v17, v5

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    :goto_0
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    aget-object v1, v3, v9

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    aget-object v1, v3, v10

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v22

    aget-object v1, v3, v11

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v23

    aget-object v1, v3, v12

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v24

    aget-object v1, v3, v13

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v25

    aget-object v1, v3, v14

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v26

    const/16 v1, 0xa

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v27

    move-object/from16 v16, v28

    invoke-direct/range {v16 .. v27}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    return-object v28
.end method

.method private queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {p0, v6, v2}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v7, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    aget-object v9, v2, v4

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-direct {v7, v8, v4, v0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    move-object v4, v7

    nop

    :goto_2
    if-ge v3, v0, :cond_2

    invoke-direct {p0, p1, v3}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v4
.end method

.method private setEngineArchitecture(IFZIZIZIZ)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    move-object v0, v2

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([B[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    return-void
.end method

.method private setTwoFloat(IIF)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {p3}, Landroid/media/audiofx/DynamicsProcessing;->floatToByteArray(F)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    return-void
.end method

.method private updateEffectArchitecture()V
    .locals 1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    return-void
.end method

.method private updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 4

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getInputGain()F

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    const/16 v1, 0x40

    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    const/16 v3, 0x60

    invoke-direct {p0, v3, p1, v2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method private updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Number;

    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getGain()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 7

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    move-object v1, v3

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    nop

    :goto_0
    move v3, v4

    if-ge v3, v0, :cond_1

    invoke-virtual {p3, v3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v4

    const/16 v5, 0x40

    if-ne p1, v5, :cond_0

    const/16 v5, 0x45

    goto :goto_1

    :cond_0
    const/16 v5, 0x65

    :goto_1
    invoke-direct {p0, v5, p2, v3, v4}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getLinkGroup()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getAttackTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getReleaseTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getPostGain()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    move-object v0, v2

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getAttackTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getReleaseTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getKneeWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getNoiseGateThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getExpanderRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPreGain()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPostGain()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    move-object v0, v2

    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 7

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    move-object v1, v3

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    nop

    :goto_0
    move v3, v4

    if-ge v3, v0, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v0

    return-object v0
.end method

.method public getChannelCount()I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->getOneInt(I)I

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/media/audiofx/DynamicsProcessing$Config;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x7

    aput-object v5, v3, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x8

    aput-object v5, v3, v12

    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    invoke-direct {v0, v13, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    new-instance v15, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    aget-object v14, v3, v4

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v16

    iget v14, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    :goto_0
    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v18

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    move/from16 v19, v1

    goto :goto_1

    :cond_1
    move/from16 v19, v4

    :goto_1
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v20

    aget-object v6, v3, v10

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_2

    move/from16 v21, v1

    goto :goto_2

    :cond_2
    move/from16 v21, v4

    :goto_2
    aget-object v6, v3, v11

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v22

    aget-object v6, v3, v12

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    move/from16 v23, v1

    goto :goto_3

    :cond_3
    move/from16 v23, v4

    :goto_3
    move v6, v14

    move-object v14, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v6

    invoke-direct/range {v14 .. v23}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v7, v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object v6

    nop

    :goto_4
    iget v7, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v4, v7, :cond_4

    invoke-direct {v0, v4}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/media/audiofx/DynamicsProcessing$Config;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    return-object v6
.end method

.method public getInputGainByChannelIndex(I)F
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result v0

    return v0
.end method

.method public getLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v0

    return-object v0
.end method

.method public getMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v0

    return-object v0
.end method

.method public getMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v0

    return-object v0
.end method

.method public getPostEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPostEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public getPreEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPreEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Landroid/media/audiofx/DynamicsProcessing$Settings;
    .locals 4

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/DynamicsProcessing$Settings;-><init>()V

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v1

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1

    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "too many channels Settings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    return-void
.end method

.method public setInputGainAllChannelsTo(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setInputGainbyChannel(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputGainbyChannel(IF)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    return-void
.end method

.method public setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method public setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing$1;)V

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public setProperties(Landroid/media/audiofx/DynamicsProcessing$Settings;)V
    .locals 3

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings invalid channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
