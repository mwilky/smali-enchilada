.class public final Landroid/hardware/broadcastradio/V2_0/IdentifierType;
.super Ljava/lang/Object;
.source "IdentifierType.java"


# static fields
.field public static final AMFM_FREQUENCY:I = 0x1

.field public static final DAB_ENSEMBLE:I = 0x6

.field public static final DAB_FREQUENCY:I = 0x8

.field public static final DAB_SCID:I = 0x7

.field public static final DAB_SID_EXT:I = 0x5

.field public static final DRMO_FREQUENCY:I = 0xa

.field public static final DRMO_SERVICE_ID:I = 0x9

.field public static final HD_STATION_ID_EXT:I = 0x3

.field public static final HD_STATION_NAME:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final RDS_PI:I = 0x2

.field public static final SXM_CHANNEL:I = 0xd

.field public static final SXM_SERVICE_ID:I = 0xc

.field public static final VENDOR_END:I = 0x7cf

.field public static final VENDOR_START:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0x3e8

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    const-string v2, "VENDOR_START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3e8

    :cond_0
    and-int/lit16 v2, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v2, v3, :cond_1

    const-string v2, "VENDOR_END"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x7cf

    :cond_1
    const-string v2, "INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "AMFM_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "RDS_PI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_3
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v2, "HD_STATION_ID_EXT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_4
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    const-string v2, "HD_STATION_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_5
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    const-string v2, "DAB_SID_EXT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_6
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    const-string v2, "DAB_ENSEMBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_7
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    const-string v2, "DAB_SCID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_8
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    const-string v2, "DAB_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_9
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    const-string v2, "DRMO_SERVICE_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_a
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    const-string v2, "DRMO_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    const-string v2, "SXM_SERVICE_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    const-string v2, "SXM_CHANNEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_d
    if-eq p0, v1, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const-string v0, "VENDOR_START"

    return-object v0

    :cond_0
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_1

    const-string v0, "VENDOR_END"

    return-object v0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "INVALID"

    return-object v0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string v0, "AMFM_FREQUENCY"

    return-object v0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const-string v0, "RDS_PI"

    return-object v0

    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const-string v0, "HD_STATION_ID_EXT"

    return-object v0

    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    const-string v0, "HD_STATION_NAME"

    return-object v0

    :cond_6
    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const-string v0, "DAB_SID_EXT"

    return-object v0

    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    const-string v0, "DAB_ENSEMBLE"

    return-object v0

    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    const-string v0, "DAB_SCID"

    return-object v0

    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    const-string v0, "DAB_FREQUENCY"

    return-object v0

    :cond_a
    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    const-string v0, "DRMO_SERVICE_ID"

    return-object v0

    :cond_b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    const-string v0, "DRMO_FREQUENCY"

    return-object v0

    :cond_c
    const/16 v0, 0xc

    if-ne p0, v0, :cond_d

    const-string v0, "SXM_SERVICE_ID"

    return-object v0

    :cond_d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    const-string v0, "SXM_CHANNEL"

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
