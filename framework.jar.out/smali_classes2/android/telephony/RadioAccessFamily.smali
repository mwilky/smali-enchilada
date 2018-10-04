.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field private static final LTE:I = 0x84000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_LTE_CA:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 2

    const v0, 0x10006

    and-int v1, v0, p0

    if-lez v1, :cond_0

    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    move p0, v0

    const v0, 0x8e08

    and-int v1, v0, p0

    if-lez v1, :cond_1

    or-int/2addr v0, p0

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    move p0, v0

    const/16 v0, 0x70

    and-int v1, v0, p0

    if-lez v1, :cond_2

    or-int/2addr v0, p0

    goto :goto_2

    :cond_2
    move v0, p0

    :goto_2
    move p0, v0

    const/16 v0, 0x3180

    and-int v1, v0, p0

    if-lez v1, :cond_3

    or-int/2addr v0, p0

    goto :goto_3

    :cond_3
    move v0, p0

    :goto_3
    move p0, v0

    const v0, 0x84000

    and-int v1, v0, p0

    if-lez v1, :cond_4

    or-int/2addr v0, p0

    goto :goto_4

    :cond_4
    move v0, p0

    :goto_4
    move p0, v0

    return p0
.end method

.method public static getHighestRafCapability(I)I
    .locals 2

    const v0, 0x84000

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const v0, 0xbf80

    const v1, 0x8e08

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const v0, 0x10006

    const/16 v1, 0x70

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_f
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_10
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_11
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_12
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_13
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_14
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_15
    const/4 v0, 0x5

    nop

    :goto_0
    nop

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_15
        0x3180 -> :sswitch_14
        0x31f0 -> :sswitch_13
        0x8e08 -> :sswitch_12
        0x10006 -> :sswitch_11
        0x18e0e -> :sswitch_10
        0x1bffe -> :sswitch_f
        0x20000 -> :sswitch_e
        0x28e08 -> :sswitch_d
        0x30006 -> :sswitch_c
        0x38e0e -> :sswitch_b
        0x3bffe -> :sswitch_a
        0x84000 -> :sswitch_9
        0x871f0 -> :sswitch_8
        0x8ce08 -> :sswitch_7
        0x9ce0e -> :sswitch_6
        0x9fffe -> :sswitch_5
        0xa4000 -> :sswitch_4
        0xace08 -> :sswitch_3
        0xb4006 -> :sswitch_2
        0xbce0e -> :sswitch_1
        0xbfffe -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_0
    const v0, 0xbfffe

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x3bffe

    goto :goto_0

    :pswitch_2
    const v0, 0xbce0e

    goto :goto_0

    :pswitch_3
    const v0, 0xace08

    goto :goto_0

    :pswitch_4
    const v0, 0x38e0e

    goto :goto_0

    :pswitch_5
    const v0, 0xb4006

    goto :goto_0

    :pswitch_6
    const v0, 0x30006

    goto :goto_0

    :pswitch_7
    const v0, 0xa4000

    goto :goto_0

    :pswitch_8
    const v0, 0x28e08

    goto :goto_0

    :pswitch_9
    const/high16 v0, 0x20000

    goto :goto_0

    :pswitch_a
    const v0, 0x8ce08

    goto :goto_0

    :pswitch_b
    const v0, 0x84000

    goto :goto_0

    :pswitch_c
    const v0, 0x9fffe

    goto :goto_0

    :pswitch_d
    const v0, 0x9ce0e

    goto :goto_0

    :pswitch_e
    const v0, 0x871f0

    goto :goto_0

    :pswitch_f
    const v0, 0x1bffe

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x3180

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x70

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x31f0

    goto :goto_0

    :pswitch_13
    const v0, 0x18e0e

    goto :goto_0

    :pswitch_14
    const v0, 0x8e08

    goto :goto_0

    :pswitch_15
    const v0, 0x10006

    goto :goto_0

    :pswitch_16
    const v0, 0x18e0e

    nop

    :goto_0
    nop

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    return v5

    :cond_0
    or-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_e
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_f
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_10
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_12
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_13
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_14
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_15
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/high16 v0, 0x80000

    return v0

    :pswitch_1
    const v0, 0x8e08

    return v0

    :pswitch_2
    const/16 v0, 0x3180

    return v0

    :pswitch_3
    const/16 v0, 0x70

    return v0

    :pswitch_4
    const v0, 0x8e00

    return v0

    :pswitch_5
    const/high16 v0, 0x20000

    return v0

    :pswitch_6
    const/high16 v0, 0x10000

    return v0

    :pswitch_7
    const v0, 0x8000

    return v0

    :pswitch_8
    const/16 v0, 0x4000

    return v0

    :pswitch_9
    const/16 v0, 0x2000

    return v0

    :pswitch_a
    const/16 v0, 0x1000

    return v0

    :pswitch_b
    const/16 v0, 0x800

    return v0

    :pswitch_c
    const/16 v0, 0x400

    return v0

    :pswitch_d
    const/16 v0, 0x200

    return v0

    :pswitch_e
    const/16 v0, 0x100

    return v0

    :pswitch_f
    const/16 v0, 0x80

    return v0

    :pswitch_10
    const/16 v0, 0x40

    return v0

    :pswitch_11
    const/16 v0, 0x20

    return v0

    :pswitch_12
    return v1

    :pswitch_13
    return v4

    :pswitch_14
    return v5

    :pswitch_15
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x798f2fe0 -> :sswitch_15
        -0x36280a07 -> :sswitch_14
        0x90b -> :sswitch_13
        0x114e1 -> :sswitch_12
        0x127bd -> :sswitch_11
        0x1f7db5 -> :sswitch_10
        0x2065bd -> :sswitch_f
        0x20a8fc -> :sswitch_e
        0x217cea -> :sswitch_d
        0x21fc3c -> :sswitch_c
        0x27cf17 -> :sswitch_b
        0x2dbbeab -> :sswitch_a
        0x3ee4e43 -> :sswitch_9
        0x41d604a -> :sswitch_8
        0x41d8b94 -> :sswitch_7
        0x41da01b -> :sswitch_6
        0x42b4b3b -> :sswitch_5
        0x42b4b3c -> :sswitch_4
        0x4e97a8c -> :sswitch_3
        0x7a9a65ad -> :sswitch_2
        0x7a9a65be -> :sswitch_1
        0x7a9a65bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioAccessFamily = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
