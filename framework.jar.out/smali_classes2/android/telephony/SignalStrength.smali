.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field private static final LTE_RSRP_THRESHOLDS_NUM:I = 0x4

.field private static final MAX_LTE_RSRP:I = -0x2c

.field private static final MAX_WCDMA_RSCP:I = -0x18

.field private static final MEASUMENT_TYPE_RSCP:Ljava/lang/String; = "rscp"

.field private static final MIN_LTE_RSRP:I = -0x8c

.field private static final MIN_WCDMA_RSCP:I = -0x78

.field public static final NT_CDMA:I = 0x5

.field public static final NT_EVDO:I = 0x6

.field public static final NT_GSM:I = 0x1

.field public static final NT_LTE:I = 0x3

.field public static final NT_TDS:I = 0x2

.field public static final NT_UNKNOWN:I = 0x0

.field public static final NT_WCDMA:I = 0x4

.field public static final NUM_SIGNAL_STRENGTH_BINS:I

.field public static OEM_SMOOTH_LOWEST_LVL:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_PERFECT:I = 0x5

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final WCDMA_RSCP_THRESHOLDS_NUM:I = 0x4

.field private static final isUst:Z

.field private static final mPlatform:Ljava/lang/String;


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mIsGsm:Z

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrpBoost:I

.field private mLteRsrpThresholds:[I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field public mSmooth_lvl_with_data_rat:I

.field public mSmooth_lvl_with_voice_rat:I

.field private mTdScdmaRscp:I

.field private mUseOnlyRsrpForLteLevel:Z

.field private mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

.field private mWcdmaRscp:I

.field private mWcdmaRscpAsu:I

.field private mWcdmaRscpThresholds:[I

.field private mWcdmaSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.radio.vendor.debug"

    .line 45
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    .line 48
    new-array v0, v2, [I

    const/16 v2, 0x54

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/SignalStrength;->isUst:Z

    .line 71
    sget-boolean v0, Landroid/telephony/SignalStrength;->isUst:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    :goto_2
    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 74
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    .line 403
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1520
    const-string/jumbo v0, "persist.sys.oem_smooth"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I

    .line 256
    const-string v19, ""

    const/16 v14, 0x63

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    .line 259
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIII)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "wcdmaSignalStrength"    # I
    .param p15, "wcdmaRscp"    # I

    .line 271
    const-string v19, ""

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    .line 275
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "wcdmaSignalStrength"    # I
    .param p15, "wcdmaRscpAsu"    # I
    .param p16, "lteRsrpBoost"    # I
    .param p17, "gsmFlag"    # Z
    .param p18, "lteLevelBaseOnRsrp"    # Z
    .param p19, "wcdmaDefaultMeasurement"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p15

    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 129
    new-array v2, v2, [I

    iput-object v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1516
    sget v2, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v2, v0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1518
    sget v2, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v2, v0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 214
    move/from16 v2, p1

    iput v2, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 215
    move/from16 v3, p2

    iput v3, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 216
    move/from16 v4, p3

    iput v4, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 217
    move/from16 v5, p4

    iput v5, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 218
    move/from16 v6, p5

    iput v6, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 219
    move/from16 v7, p6

    iput v7, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 220
    move/from16 v8, p7

    iput v8, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 221
    move/from16 v9, p8

    iput v9, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 222
    move/from16 v10, p9

    iput v10, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 223
    move/from16 v11, p10

    iput v11, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 224
    move/from16 v12, p11

    iput v12, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 225
    move/from16 v13, p12

    iput v13, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 227
    move/from16 v14, p13

    iput v14, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 229
    move/from16 v15, p14

    iput v15, v0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 230
    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 231
    add-int/lit8 v2, v1, -0x78

    iput v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 232
    move/from16 v2, p16

    iput v2, v0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 233
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 234
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 235
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 236
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 237
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 240
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 241
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 243
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1516
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1518
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 327
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of signalstrength parcel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 350
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1516
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1518
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 285
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "gsmFlag"    # Z

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1516
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1518
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 171
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 173
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 174
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 175
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 176
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 177
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 178
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 179
    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 180
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 181
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 184
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 185
    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 186
    const/16 v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 188
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 189
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 190
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 192
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 195
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 196
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 198
    return-void
.end method

.method private getCdmaRelatedSignalStrength()I
    .locals 4

    .line 1369
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    .line 1371
    .local v0, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .line 1372
    .local v1, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 1373
    .local v2, "evdoLevel":I
    if-nez v2, :cond_0

    .line 1375
    move v0, v1

    goto :goto_1

    .line 1376
    :cond_0
    if-nez v1, :cond_1

    .line 1378
    move v0, v2

    goto :goto_1

    .line 1381
    :cond_1
    if-ge v1, v2, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    move v0, v3

    .line 1383
    :goto_1
    return v0
.end method

.method private getDefaultLteRsrpThresholds()[I
    .locals 2

    .line 1478
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWcdmaRscpThresholds()[I
    .locals 2

    .line 1488
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getGsmRelatedSignalStrength()I
    .locals 4

    .line 1336
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1338
    .local v0, "level":I
    const/4 v1, 0x0

    .line 1339
    .local v1, "ustMapping":Z
    if-nez v0, :cond_1

    .line 1340
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    .line 1341
    if-nez v0, :cond_0

    .line 1342
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v0

    .line 1343
    if-nez v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1345
    if-eqz v0, :cond_1

    .line 1347
    const/4 v1, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    const/4 v1, 0x1

    .line 1356
    :cond_1
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->isUst:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1357
    add-int/lit8 v0, v0, 0x1

    .line 1358
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level mapping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1359
    :cond_2
    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    const/4 v0, 0x5

    .line 1362
    :cond_3
    return v0
.end method

.method private getWcdmaSignalStrength()I
    .locals 1

    .line 1603
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1496
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 148
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 149
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 150
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1393
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1394
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1395
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1396
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1397
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1398
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1399
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1400
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1401
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1402
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1403
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1404
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1405
    const-string v0, "LteRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 1406
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1407
    const-string v0, "WcdmaSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 1408
    const-string v0, "WcdmaRscpAsu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 1409
    const-string v0, "WcdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 1410
    const-string v0, "IsGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 1411
    const-string v0, "UseOnlyRsrpForLteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 1412
    const-string v0, "WcdmaDefaultSignalMeasurement"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1413
    const-string/jumbo v0, "lteRsrpThresholds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1414
    .local v0, "lteRsrpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    move v2, v1

    .line 1414
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1415
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 1414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1417
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1418
    .local v2, "wcdmaRscpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .line 1418
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1419
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 1418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1423
    .end local v1    # "i":I
    :cond_1
    const-string v1, "OEMLevel_0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1424
    const-string v1, "OEMLevel_1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 1426
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 292
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 293
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 294
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 295
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 296
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 297
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 298
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 299
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 300
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 301
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 302
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 303
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 304
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 305
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 306
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 307
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 308
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 309
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 310
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 311
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 313
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 316
    iget v0, p1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 317
    iget v0, p1, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    .line 319
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1265
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    .local v1, "s":Landroid/telephony/SignalStrength;
    nop

    .line 1267
    nop

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    return v0

    .line 1274
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1293
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1294
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1295
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    .line 1274
    :cond_1
    return v0

    .line 1266
    .end local v1    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1435
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1438
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1440
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1441
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1442
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1443
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1444
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1445
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1446
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1447
    const-string v0, "LteRsrpBoost"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1448
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1449
    const-string v0, "WcdmaSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1450
    const-string v0, "WcdmaRscpAsu"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1451
    const-string v0, "WcdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1452
    const-string v0, "IsGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1453
    const-string v0, "UseOnlyRsrpForLteLevel"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1454
    const-string v0, "WcdmaDefaultSignalMeasurement"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    .local v0, "lteRsrpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 1457
    .local v5, "value":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    .end local v5    # "value":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1459
    :cond_0
    const-string/jumbo v1, "lteRsrpThresholds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    .local v1, "wcdmaRscpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .line 1462
    .restart local v5    # "value":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1464
    :cond_1
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1467
    const-string v2, "OEMLevel_0"

    iget v3, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1468
    const-string v2, "OEMLevel_1"

    iget v3, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    return-void
.end method

.method public fixType()V
    .locals 1

    .line 469
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 472
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "asuLevel":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_3

    .line 654
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_1

    .line 656
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-eq v1, v2, :cond_1

    .line 657
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_1

    .line 658
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v2, :cond_2

    .line 659
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaAsuLevel()I

    move-result v0

    goto :goto_1

    .line 661
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    goto :goto_1

    .line 664
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 665
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 666
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 668
    move v0, v1

    goto :goto_1

    .line 669
    :cond_4
    if-nez v1, :cond_5

    .line 671
    move v0, v2

    goto :goto_1

    .line 674
    :cond_5
    if-ge v1, v2, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    move v0, v3

    .line 677
    .end local v1    # "cdmaAsuLevel":I
    .end local v2    # "evdoAsuLevel":I
    :goto_1
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 678
    :cond_7
    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 7

    .line 811
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 812
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 816
    .local v1, "cdmaEcio":I
    const/16 v2, 0x63

    const/16 v3, -0x64

    const/16 v4, -0x5a

    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/16 v5, 0x10

    .local v5, "cdmaAsuLevel":I
    :goto_0
    goto :goto_1

    .line 817
    .end local v5    # "cdmaAsuLevel":I
    :cond_0
    const/16 v5, -0x52

    if-lt v0, v5, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    .line 818
    :cond_1
    if-lt v0, v4, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    .line 819
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    .line 820
    :cond_3
    if-lt v0, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    .line 821
    :cond_4
    move v5, v2

    .line 824
    .restart local v5    # "cdmaAsuLevel":I
    :goto_1
    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    .local v2, "ecioAsuLevel":I
    :goto_2
    goto :goto_3

    .line 825
    .end local v2    # "ecioAsuLevel":I
    :cond_5
    if-lt v1, v3, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    .line 826
    :cond_6
    const/16 v3, -0x73

    if-lt v1, v3, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    .line 827
    :cond_7
    const/16 v3, -0x82

    if-lt v1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 828
    :cond_8
    const/16 v3, -0x96

    if-lt v1, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 829
    :cond_9
    nop

    .line 831
    .restart local v2    # "ecioAsuLevel":I
    :goto_3
    if-ge v5, v2, :cond_a

    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v2

    .line 832
    .local v3, "level":I
    :goto_4
    sget-boolean v4, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 833
    :cond_b
    return v3
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 571
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 578
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .line 775
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 776
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 787
    .local v1, "cdmaEcio":I
    const/4 v2, 0x0

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_0

    const/4 v4, 0x4

    .local v4, "levelDbm":I
    :goto_0
    goto :goto_1

    .line 788
    .end local v4    # "levelDbm":I
    :cond_0
    const/16 v4, -0x64

    if-lt v0, v4, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    .line 789
    :cond_1
    const/16 v4, -0x6a

    if-lt v0, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    .line 790
    :cond_2
    const/16 v4, -0x6d

    if-lt v0, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    .line 791
    :cond_3
    move v4, v2

    .line 794
    .restart local v4    # "levelDbm":I
    :goto_1
    if-lt v1, v3, :cond_4

    const/4 v2, 0x4

    .local v2, "levelEcio":I
    :goto_2
    goto :goto_3

    .line 795
    .end local v2    # "levelEcio":I
    :cond_4
    const/16 v3, -0x6e

    if-lt v1, v3, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    .line 796
    :cond_5
    const/16 v3, -0x82

    if-lt v1, v3, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    .line 797
    :cond_6
    const/16 v3, -0x96

    if-lt v1, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    .line 798
    :cond_7
    nop

    .line 800
    .restart local v2    # "levelEcio":I
    :goto_3
    if-ge v4, v2, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    move v3, v2

    .line 801
    .local v3, "level":I
    :goto_4
    sget-boolean v5, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 802
    :cond_9
    return v3
.end method

.method public getDbm()I
    .locals 4

    .line 687
    const v0, 0x7fffffff

    .line 689
    .local v0, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 691
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 692
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    if-nez v2, :cond_1

    .line 693
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 709
    :cond_2
    :goto_0
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 710
    :cond_3
    return v0

    .line 703
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 704
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 706
    .local v2, "evdoDbm":I
    const/16 v3, -0x78

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    goto :goto_2

    .line 707
    :cond_6
    if-ge v1, v2, :cond_7

    .line 706
    :goto_1
    move v3, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v2

    :goto_3
    return v3
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .line 878
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 879
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 883
    .local v1, "evdoSnr":I
    const/16 v2, 0x63

    const/16 v3, -0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x10

    .local v3, "levelEvdoDbm":I
    :goto_0
    goto :goto_1

    .line 884
    .end local v3    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    .line 885
    :cond_1
    const/16 v3, -0x55

    if-lt v0, v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    .line 886
    :cond_2
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    .line 887
    :cond_3
    const/16 v3, -0x69

    if-lt v0, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .line 888
    :cond_4
    move v3, v2

    .line 890
    .restart local v3    # "levelEvdoDbm":I
    :goto_1
    const/4 v4, 0x7

    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    .local v2, "levelEvdoSnr":I
    :goto_2
    goto :goto_3

    .line 891
    .end local v2    # "levelEvdoSnr":I
    :cond_5
    const/4 v4, 0x6

    if-lt v1, v4, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    .line 892
    :cond_6
    const/4 v4, 0x5

    if-lt v1, v4, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    .line 893
    :cond_7
    const/4 v4, 0x3

    if-lt v1, v4, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 894
    :cond_8
    const/4 v4, 0x1

    if-lt v1, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 895
    :cond_9
    nop

    .line 897
    .restart local v2    # "levelEvdoSnr":I
    :goto_3
    if-ge v3, v2, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v2

    .line 898
    .local v4, "level":I
    :goto_4
    sget-boolean v5, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 899
    :cond_b
    return v4
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 592
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .line 842
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 843
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 854
    .local v1, "evdoSnr":I
    const/4 v2, 0x0

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_0

    const/4 v3, 0x4

    .local v3, "levelEvdoDbm":I
    :goto_0
    goto :goto_1

    .line 855
    .end local v3    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x64

    if-lt v0, v3, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    .line 856
    :cond_1
    const/16 v3, -0x6a

    if-lt v0, v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 857
    :cond_2
    const/16 v3, -0x6e

    if-lt v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 858
    :cond_3
    move v3, v2

    .line 861
    .restart local v3    # "levelEvdoDbm":I
    :goto_1
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v2, 0x4

    .local v2, "levelEvdoSnr":I
    :goto_2
    goto :goto_3

    .line 862
    .end local v2    # "levelEvdoSnr":I
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    .line 863
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    .line 864
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    .line 865
    :cond_7
    nop

    .line 867
    .restart local v2    # "levelEvdoSnr":I
    :goto_3
    if-ge v3, v2, :cond_8

    move v4, v3

    goto :goto_4

    :cond_8
    move v4, v2

    .line 868
    .local v4, "level":I
    :goto_4
    sget-boolean v5, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 869
    :cond_9
    return v4
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 599
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .line 764
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 765
    .local v0, "level":I
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 766
    :cond_0
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .line 547
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .line 721
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 722
    .local v0, "gsmSignalStrength":I
    const/4 v1, -0x1

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 723
    .local v2, "asu":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 724
    const/16 v1, -0x71

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .local v1, "dBm":I
    goto :goto_1

    .line 726
    .end local v1    # "dBm":I
    :cond_1
    nop

    .line 728
    .restart local v1    # "dBm":I
    :goto_1
    sget-boolean v3, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 729
    :cond_2
    return v1
.end method

.method public getGsmLevel()I
    .locals 4

    .line 744
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 745
    .local v0, "asu":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 747
    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 748
    :cond_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 749
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 745
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 749
    .local v1, "level":I
    :goto_1
    nop

    .line 750
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 751
    :cond_5
    return v1
.end method

.method public getGsmLevel(Z)I
    .locals 4
    .param p1, "wcdma"    # Z

    .line 1619
    sget-object v0, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    const-string/jumbo v1, "msm8998"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    const-string/jumbo v1, "msm8996"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1620
    :cond_0
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOEMSmoothSignalLevel() platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1621
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1621
    .local v0, "asu":I
    goto :goto_0

    .line 1623
    .end local v0    # "asu":I
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getWcdmaSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1626
    .restart local v0    # "asu":I
    :goto_0
    if-ltz v0, :cond_b

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    goto :goto_4

    .line 1627
    :cond_4
    if-eqz p1, :cond_5

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    goto :goto_1

    :cond_5
    const/16 v1, 0xd

    if-lt v0, v1, :cond_6

    :goto_1
    const/4 v1, 0x4

    goto :goto_5

    .line 1628
    :cond_6
    if-eqz p1, :cond_7

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    :goto_2
    const/4 v1, 0x3

    goto :goto_5

    .line 1629
    :cond_8
    const/4 v1, 0x7

    if-eqz p1, :cond_9

    if-lt v0, v1, :cond_a

    goto :goto_3

    :cond_9
    if-lt v0, v1, :cond_a

    :goto_3
    const/4 v1, 0x2

    goto :goto_5

    .line 1630
    :cond_a
    const/4 v1, 0x1

    goto :goto_5

    .line 1626
    :cond_b
    :goto_4
    const/4 v1, 0x0

    .line 1630
    .local v1, "level":I
    :goto_5
    nop

    .line 1631
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1632
    :cond_c
    return v1
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .line 540
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 3

    .line 641
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    .line 642
    .local v0, "level":I
    :goto_0
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 643
    :cond_1
    return v0
.end method

.method public getLteAsuLevel()I
    .locals 4

    .line 1031
    const/16 v0, 0x63

    .line 1032
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1046
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    .line 1047
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    .line 1048
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1049
    :cond_1
    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .line 624
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .line 908
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 7

    .line 926
    const/4 v0, 0x0

    .local v0, "rssiIconLevel":I
    const/4 v1, -0x1

    .local v1, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 928
    .local v2, "snrIconLevel":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-gt v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x8c

    if-ge v3, v5, :cond_1

    .line 929
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_1

    .line 930
    const-string v3, "SignalStrength"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteLevel - invalid lte rsrp: mLteRsrp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1
    sget-boolean v3, Landroid/telephony/SignalStrength;->isUst:Z

    const/16 v5, -0x78

    if-eqz v3, :cond_8

    .line 948
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v4, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 949
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x64

    if-le v3, v4, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    .line 950
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x6e

    if-le v3, v4, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    .line 951
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-le v3, v4, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    .line 952
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v5, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    .line 953
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x87

    if-le v3, v4, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    .line 954
    :cond_7
    const/4 v1, 0x0

    .line 955
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ust getLTELevel - mLteRsrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rsrpIconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 957
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v4, :cond_9

    const/4 v1, -0x1

    goto :goto_1

    .line 958
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x61

    if-lt v3, v4, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    .line 959
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_b

    const/4 v1, 0x3

    goto :goto_1

    .line 960
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x71

    if-lt v3, v4, :cond_c

    const/4 v1, 0x2

    goto :goto_1

    .line 961
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v5, :cond_d

    const/4 v1, 0x1

    goto :goto_1

    .line 962
    :cond_d
    const/4 v1, 0x0

    .line 965
    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    if-eqz v1, :cond_e

    .line 966
    return v1

    .line 969
    :cond_e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->useOnlyRsrpForLteLevel()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rsrp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 971
    if-eq v1, v3, :cond_f

    .line 972
    return v1

    .line 982
    :cond_f
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x12c

    if-le v4, v5, :cond_10

    const/4 v2, -0x1

    goto :goto_2

    .line 983
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x82

    if-lt v4, v5, :cond_11

    const/4 v2, 0x4

    goto :goto_2

    .line 984
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x2d

    if-lt v4, v5, :cond_12

    const/4 v2, 0x3

    goto :goto_2

    .line 985
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_13

    const/4 v2, 0x2

    goto :goto_2

    .line 986
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, -0x1e

    if-lt v4, v5, :cond_14

    const/4 v2, 0x1

    goto :goto_2

    .line 987
    :cond_14
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, -0xc8

    if-lt v4, v5, :cond_15

    .line 988
    const/4 v2, 0x0

    .line 990
    :cond_15
    :goto_2
    sget-boolean v4, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rsrp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " snr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rsrpIconLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " snrIconLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lteRsrpBoost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 995
    :cond_16
    if-eq v2, v3, :cond_18

    if-eq v1, v3, :cond_18

    .line 1001
    if-ge v1, v2, :cond_17

    move v3, v1

    goto :goto_3

    :cond_17
    move v3, v2

    :goto_3
    return v3

    .line 1004
    :cond_18
    if-eq v2, v3, :cond_19

    return v2

    .line 1006
    :cond_19
    if-eq v1, v3, :cond_1a

    return v1

    .line 1012
    :cond_1a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_1b

    const/4 v0, 0x0

    goto :goto_4

    .line 1013
    :cond_1b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_1c

    const/4 v0, 0x4

    goto :goto_4

    .line 1014
    :cond_1c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1d

    const/4 v0, 0x3

    goto :goto_4

    .line 1015
    :cond_1d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1e

    const/4 v0, 0x2

    goto :goto_4

    .line 1016
    :cond_1e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_1f

    const/4 v0, 0x1

    .line 1018
    :cond_1f
    :goto_4
    sget-boolean v3, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLteLevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1020
    :cond_20
    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .line 609
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrpBoost()I
    .locals 1

    .line 629
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .line 614
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .line 619
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .line 604
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getOEMSmoothSignalLevel(I)I
    .locals 6
    .param p1, "networktype"    # I

    .line 1556
    sget v0, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    .line 1558
    .local v0, "level":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1559
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getGsmLevel(Z)I

    move-result v0

    .line 1560
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_0
    move v0, v1

    goto/16 :goto_5

    .line 1561
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1562
    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getTdScdmaLevel(Z)I

    move-result v0

    .line 1563
    sget v3, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v3, v1, :cond_10

    .line 1564
    if-le v0, v1, :cond_2

    move v2, v0

    nop

    :cond_2
    move v0, v2

    goto/16 :goto_5

    .line 1566
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 1567
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1568
    if-lez v0, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    sget v2, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_1
    move v0, v2

    .line 1569
    if-nez v0, :cond_10

    .line 1570
    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v1

    return v1

    .line 1572
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    .line 1574
    sget-boolean v4, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOEMSmoothSignalLevel() platform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1575
    :cond_6
    sget-object v4, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    if-eqz v4, :cond_8

    sget-object v4, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    const-string/jumbo v5, "msm8998"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Landroid/telephony/SignalStrength;->mPlatform:Ljava/lang/String;

    const-string/jumbo v5, "msm8996"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1576
    :cond_7
    const-string v4, "getGsmLevel when networktype is WCDMA"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getGsmLevel(Z)I

    move-result v0

    goto :goto_2

    .line 1579
    :cond_8
    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getWcdmaLevel(Z)I

    move-result v0

    .line 1582
    :goto_2
    sget v4, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    if-ne v4, v1, :cond_10

    .line 1583
    if-ge v0, v2, :cond_9

    .line 1584
    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getOEMSmoothSignalLevel(I)I

    move-result v0

    .line 1586
    :cond_9
    if-le v0, v1, :cond_a

    move v2, v0

    nop

    :cond_a
    move v0, v2

    goto :goto_5

    .line 1588
    :cond_b
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 1589
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1590
    if-lez v0, :cond_c

    move v1, v0

    goto :goto_3

    :cond_c
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_3
    move v0, v1

    goto :goto_5

    .line 1591
    :cond_d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 1592
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1593
    if-lez v0, :cond_e

    move v1, v0

    goto :goto_4

    :cond_e
    sget v1, Landroid/telephony/SignalStrength;->OEM_SMOOTH_LOWEST_LVL:I

    :goto_4
    move v0, v1

    goto :goto_5

    .line 1595
    :cond_f
    if-nez p1, :cond_10

    .line 1596
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 1598
    :cond_10
    :goto_5
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get OEM Smooth Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1599
    :cond_11
    return v0
.end method

.method public getSmoothSignalLevel()I
    .locals 2

    .line 1539
    sget-boolean v0, Landroid/telephony/SignalStrength;->isUst:Z

    if-eqz v0, :cond_1

    .line 1540
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ust support, only getLevel"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1541
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0

    .line 1545
    :cond_1
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    if-le v0, v1, :cond_2

    .line 1546
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    .line 1545
    :goto_0
    return v0
.end method

.method public getSmoothSignalLevelAll()[I
    .locals 3

    .line 1529
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .line 1107
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 1110
    .local v0, "tdScdmaDbm":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/16 v1, 0xff

    .local v1, "tdScdmaAsuLevel":I
    goto :goto_0

    .line 1111
    .end local v1    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v1, v0, 0x78

    .line 1112
    .restart local v1    # "tdScdmaAsuLevel":I
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1113
    :cond_1
    return v1
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .line 1074
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 4

    .line 1086
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 1089
    .local v0, "tdScdmaDbm":I
    const/16 v1, -0x19

    if-gt v0, v1, :cond_5

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    const/16 v1, -0x31

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 1092
    :cond_1
    const/16 v1, -0x49

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 1093
    :cond_2
    const/16 v1, -0x61

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 1094
    :cond_3
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 1095
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1090
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 1095
    .local v1, "level":I
    :goto_1
    nop

    .line 1097
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1098
    :cond_6
    return v1
.end method

.method public getTdScdmaLevel(Z)I
    .locals 4
    .param p1, "oem_spec"    # Z

    .line 1679
    if-eqz p1, :cond_7

    .line 1680
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 1683
    .local v0, "tdScdmaDbm":I
    const/16 v1, -0x19

    if-gt v0, v1, :cond_5

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    const/16 v1, -0x5b

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 1686
    :cond_1
    const/16 v1, -0x61

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 1687
    :cond_2
    const/16 v1, -0x63

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 1688
    :cond_3
    const/16 v1, -0x78

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 1689
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1684
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 1689
    .local v1, "level":I
    :goto_1
    nop

    .line 1691
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel oem_spec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1692
    :cond_6
    return v1

    .line 1695
    .end local v0    # "tdScdmaDbm":I
    .end local v1    # "level":I
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaAsuLevel()I
    .locals 4

    .line 1139
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    .line 1140
    .local v0, "wcdmaDbm":I
    const/16 v1, 0xff

    .line 1143
    .local v1, "wcdmaAsuLevel":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    .line 1144
    :cond_0
    add-int/lit8 v1, v0, 0x78

    .line 1145
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wcdma Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1146
    :cond_1
    return v1
.end method

.method public getWcdmaDbm()I
    .locals 1

    .line 1155
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public getWcdmaLevel()I
    .locals 7

    .line 1164
    const/4 v0, 0x0

    .line 1166
    .local v0, "level":I
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1167
    const-string v1, "SignalStrength"

    const-string v2, "getWcdmaLevel - WCDMA default signal measurement is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return v0

    .line 1171
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x358e6e

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "rscp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v5

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-eqz v2, :cond_9

    .line 1216
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v2, :cond_7

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 1221
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4

    .line 1222
    const/4 v0, 0x4

    goto :goto_2

    .line 1223
    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_5

    .line 1224
    const/4 v0, 0x3

    goto :goto_2

    .line 1225
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_6

    .line 1226
    const/4 v0, 0x2

    goto :goto_2

    .line 1227
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-lt v2, v1, :cond_8

    .line 1228
    const/4 v0, 0x1

    goto :goto_2

    .line 1217
    :cond_7
    :goto_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v2, 0x63

    if-eq v1, v2, :cond_8

    .line 1218
    const-string v1, "SignalStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWcdmaLevel - invalid WCDMA RSSI: mWcdmaSignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_8
    :goto_2
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWcdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WcdmaSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1174
    :cond_9
    sget-boolean v2, Landroid/telephony/SignalStrength;->isUst:Z

    const v3, 0x7fffffff

    const/16 v4, -0x18

    const/16 v6, -0x78

    if-eqz v2, :cond_11

    .line 1175
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-lt v1, v6, :cond_f

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-le v1, v4, :cond_a

    goto :goto_3

    .line 1180
    :cond_a
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x59

    if-le v1, v2, :cond_b

    .line 1181
    const/4 v0, 0x5

    goto :goto_4

    .line 1182
    :cond_b
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x61

    if-le v1, v2, :cond_c

    .line 1183
    const/4 v0, 0x4

    goto :goto_4

    .line 1184
    :cond_c
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x67

    if-le v1, v2, :cond_d

    .line 1185
    const/4 v0, 0x3

    goto :goto_4

    .line 1186
    :cond_d
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x71

    if-le v1, v2, :cond_e

    .line 1187
    const/4 v0, 0x2

    goto :goto_4

    .line 1188
    :cond_e
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x7d

    if-le v1, v2, :cond_10

    .line 1189
    const/4 v0, 0x1

    goto :goto_4

    .line 1176
    :cond_f
    :goto_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v3, :cond_10

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWcdmaLevelUst - invalid WCDMA RSCP: mWcdmaRscp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1191
    :cond_10
    :goto_4
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWcdmaLevelUst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WcdmaRscp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1195
    :cond_11
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-lt v2, v6, :cond_16

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-le v2, v4, :cond_12

    goto :goto_5

    .line 1200
    :cond_12
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget v1, v3, v1

    if-lt v2, v1, :cond_13

    .line 1201
    const/4 v0, 0x4

    goto :goto_6

    .line 1202
    :cond_13
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-lt v1, v2, :cond_14

    .line 1203
    const/4 v0, 0x3

    goto :goto_6

    .line 1204
    :cond_14
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lt v1, v2, :cond_15

    .line 1205
    const/4 v0, 0x2

    goto :goto_6

    .line 1206
    :cond_15
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget v2, v2, v5

    if-lt v1, v2, :cond_17

    .line 1207
    const/4 v0, 0x1

    goto :goto_6

    .line 1196
    :cond_16
    :goto_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v3, :cond_17

    .line 1197
    const-string v1, "SignalStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWcdmaLevel - invalid WCDMA RSCP: mWcdmaRscp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_17
    :goto_6
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWcdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WcdmaRscp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1235
    :cond_18
    :goto_7
    return v0
.end method

.method public getWcdmaLevel(Z)I
    .locals 4
    .param p1, "oem_spec"    # Z

    .line 1646
    if-eqz p1, :cond_7

    .line 1647
    const/4 v0, 0x0

    .line 1649
    .local v0, "level":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_4

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x18

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 1654
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x5b

    if-lt v1, v2, :cond_1

    .line 1655
    const/4 v0, 0x4

    goto :goto_1

    .line 1656
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_2

    .line 1657
    const/4 v0, 0x3

    goto :goto_1

    .line 1658
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v2, -0x63

    if-lt v1, v2, :cond_3

    .line 1659
    const/4 v0, 0x2

    goto :goto_1

    .line 1661
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1650
    :cond_4
    :goto_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5

    .line 1651
    const-string v1, "SignalStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWcdmaLevel - invalid WCDMA RSCP: mWcdmaRscp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_5
    :goto_1
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWcdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1664
    :cond_6
    return v0

    .line 1666
    .end local v0    # "level":I
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1

    .line 1122
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1243
    const/16 v0, 0x1f

    .line 1244
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 1252
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    add-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1253
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1254
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1244
    return v1
.end method

.method public isGsm()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .line 483
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 484
    return-void
.end method

.method public setLteRsrpBoost(I)V
    .locals 0
    .param p1, "lteRsrpBoost"    # I

    .line 516
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 517
    return-void
.end method

.method public setLteRsrpThresholds([I)V
    .locals 3
    .param p1, "lteRsrpThresholds"    # [I

    .line 527
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    return-void

    .line 529
    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setLteRsrpThresholds - lteRsrpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public setUseOnlyRsrpForLteLevel(Z)V
    .locals 0
    .param p1, "useOnlyRsrpForLteLevel"    # Z

    .line 494
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 495
    return-void
.end method

.method public setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultMeasurement"    # Ljava/lang/String;

    .line 504
    iput-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setWcdmaRscpThresholds([I)V
    .locals 3
    .param p1, "wcdmaRscpThresholds"    # [I

    .line 558
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    return-void

    .line 560
    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setWcdmaRscpThresholds - wcdmaRscpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_0

    const-string v1, "gsm|lte"

    goto :goto_0

    :cond_0
    const-string v1, "cdma"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "use_only_rsrp_for_lte_level"

    goto :goto_1

    .line 1328
    :cond_1
    const-string/jumbo v1, "use_rsrp_and_rssnr_for_lte_level"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1330
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1331
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    return-object v0
.end method

.method public useOnlyRsrpForLteLevel()Z
    .locals 1

    .line 1065
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return v0
.end method

.method public validateInput()V
    .locals 5

    .line 425
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal before validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 427
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/16 v1, 0x63

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 428
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 429
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    nop

    :cond_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 434
    nop

    .line 435
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    const/16 v1, 0x78

    sub-int/2addr v0, v1

    const/16 v2, -0x18

    const/16 v3, -0x78

    if-lt v0, v3, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    sub-int/2addr v0, v1

    if-gt v0, v2, :cond_4

    .line 436
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    goto :goto_2

    :cond_4
    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 437
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v4, 0x7fffffff

    if-lt v0, v3, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-gt v0, v2, :cond_5

    .line 438
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 440
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v2, -0xa0

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v3, v0

    nop

    :cond_8
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 444
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v2, v0

    nop

    :cond_9
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 445
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_6

    :cond_a
    const/4 v0, -0x1

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v2, -0x8c

    if-lt v0, v2, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v2, -0x2c

    if-gt v0, v2, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    goto :goto_7

    .line 449
    :cond_b
    move v0, v4

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v2, 0x14

    if-gt v0, v2, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    goto :goto_8

    :cond_c
    move v0, v4

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 451
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v2, -0xc8

    if-lt v0, v2, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v2, 0x12c

    if-gt v0, v2, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_9

    .line 452
    :cond_d
    move v0, v4

    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v2, 0x19

    if-lt v0, v2, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-gt v0, v1, :cond_e

    .line 455
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    nop

    :cond_e
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 457
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 458
    :cond_f
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 362
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 383
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_voice_rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mSmooth_lvl_with_data_rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    return-void
.end method
