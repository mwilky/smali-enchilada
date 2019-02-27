.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field public static final INVALID_BAND:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuplexModeForEutranBand(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x44

    if-lt p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x41

    const/4 v2, 0x1

    if-lt p0, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x2f

    if-lt p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x21

    if-lt p0, v1, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    if-lt p0, v2, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public static getOperatingBandForEarfcn(I)I
    .locals 2

    const/4 v0, -0x1

    const v1, 0x107cf

    if-le p0, v1, :cond_0

    return v0

    :cond_0
    const v1, 0x10726

    if-lt p0, v1, :cond_1

    return v0

    :cond_1
    const v1, 0x10384

    if-lt p0, v1, :cond_2

    const/16 v0, 0x42

    return v0

    :cond_2
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_3

    const/16 v0, 0x41

    return v0

    :cond_3
    const v1, 0xd443

    if-le p0, v1, :cond_4

    return v0

    :cond_4
    const v1, 0xb6c6

    if-lt p0, v1, :cond_5

    const/16 v0, 0x2e

    return v0

    :cond_5
    const v1, 0xb5fe

    if-lt p0, v1, :cond_6

    const/16 v0, 0x2d

    return v0

    :cond_6
    const v1, 0xb216

    if-lt p0, v1, :cond_7

    const/16 v0, 0x2c

    return v0

    :cond_7
    const v1, 0xaa46

    if-lt p0, v1, :cond_8

    const/16 v0, 0x2b

    return v0

    :cond_8
    const v1, 0xa276

    if-lt p0, v1, :cond_9

    const/16 v0, 0x2a

    return v0

    :cond_9
    const v1, 0x9ae2

    if-lt p0, v1, :cond_a

    const/16 v0, 0x29

    return v0

    :cond_a
    const v1, 0x96fa

    if-lt p0, v1, :cond_b

    const/16 v0, 0x28

    return v0

    :cond_b
    const v1, 0x956a

    if-lt p0, v1, :cond_c

    const/16 v0, 0x27

    return v0

    :cond_c
    const v1, 0x9376

    if-lt p0, v1, :cond_d

    const/16 v0, 0x26

    return v0

    :cond_d
    const v1, 0x92ae

    if-lt p0, v1, :cond_e

    const/16 v0, 0x25

    return v0

    :cond_e
    const v1, 0x9056

    if-lt p0, v1, :cond_f

    const/16 v0, 0x24

    return v0

    :cond_f
    const v1, 0x8dfe

    if-lt p0, v1, :cond_10

    const/16 v0, 0x23

    return v0

    :cond_10
    const v1, 0x8d68

    if-lt p0, v1, :cond_11

    const/16 v0, 0x22

    return v0

    :cond_11
    const v1, 0x8ca0

    if-lt p0, v1, :cond_12

    const/16 v0, 0x21

    return v0

    :cond_12
    const/16 v1, 0x2877

    if-le p0, v1, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x26c0

    if-lt p0, v1, :cond_14

    return v0

    :cond_14
    const/16 v1, 0x268e

    if-lt p0, v1, :cond_15

    const/16 v0, 0x1f

    return v0

    :cond_15
    const/16 v1, 0x262a

    if-lt p0, v1, :cond_16

    const/16 v0, 0x1e

    return v0

    :cond_16
    const/16 v1, 0x25bc

    if-lt p0, v1, :cond_17

    return v0

    :cond_17
    const/16 v1, 0x23fa

    if-lt p0, v1, :cond_18

    const/16 v0, 0x1c

    return v0

    :cond_18
    const/16 v1, 0x2350

    if-lt p0, v1, :cond_19

    const/16 v0, 0x1b

    return v0

    :cond_19
    const/16 v1, 0x21f2

    if-lt p0, v1, :cond_1a

    const/16 v0, 0x1a

    return v0

    :cond_1a
    const/16 v1, 0x1f68

    if-lt p0, v1, :cond_1b

    const/16 v0, 0x19

    return v0

    :cond_1b
    const/16 v1, 0x1e14

    if-lt p0, v1, :cond_1c

    const/16 v0, 0x18

    return v0

    :cond_1c
    const/16 v1, 0x1d4c

    if-lt p0, v1, :cond_1d

    const/16 v0, 0x17

    return v0

    :cond_1d
    const/16 v1, 0x19c8

    if-lt p0, v1, :cond_1e

    const/16 v0, 0x16

    return v0

    :cond_1e
    const/16 v1, 0x1932

    if-lt p0, v1, :cond_1f

    const/16 v0, 0x15

    return v0

    :cond_1f
    const/16 v1, 0x1806

    if-lt p0, v1, :cond_20

    const/16 v0, 0x14

    return v0

    :cond_20
    const/16 v1, 0x1770

    if-lt p0, v1, :cond_21

    const/16 v0, 0x13

    return v0

    :cond_21
    const/16 v1, 0x16da

    if-lt p0, v1, :cond_22

    const/16 v0, 0x12

    return v0

    :cond_22
    const/16 v1, 0x1662

    if-lt p0, v1, :cond_23

    const/16 v0, 0x11

    return v0

    :cond_23
    const/16 v1, 0x1503

    if-le p0, v1, :cond_24

    return v0

    :cond_24
    const/16 v1, 0x14a0

    if-lt p0, v1, :cond_25

    const/16 v0, 0xe

    return v0

    :cond_25
    const/16 v1, 0x143c

    if-lt p0, v1, :cond_26

    const/16 v0, 0xd

    return v0

    :cond_26
    const/16 v1, 0x1392

    if-lt p0, v1, :cond_27

    const/16 v0, 0xc

    return v0

    :cond_27
    const/16 v1, 0x128e

    if-lt p0, v1, :cond_28

    const/16 v0, 0xb

    return v0

    :cond_28
    const/16 v1, 0x1036

    if-lt p0, v1, :cond_29

    const/16 v0, 0xa

    return v0

    :cond_29
    const/16 v1, 0xed8

    if-lt p0, v1, :cond_2a

    const/16 v0, 0x9

    return v0

    :cond_2a
    const/16 v1, 0xd7a

    if-lt p0, v1, :cond_2b

    const/16 v0, 0x8

    return v0

    :cond_2b
    const/16 v1, 0xabe

    if-lt p0, v1, :cond_2c

    const/4 v0, 0x7

    return v0

    :cond_2c
    const/16 v1, 0xa5a

    if-lt p0, v1, :cond_2d

    const/4 v0, 0x6

    return v0

    :cond_2d
    const/16 v1, 0x960

    if-lt p0, v1, :cond_2e

    const/4 v0, 0x5

    return v0

    :cond_2e
    const/16 v1, 0x79e

    if-lt p0, v1, :cond_2f

    const/4 v0, 0x4

    return v0

    :cond_2f
    const/16 v1, 0x4b0

    if-lt p0, v1, :cond_30

    const/4 v0, 0x3

    return v0

    :cond_30
    const/16 v1, 0x258

    if-lt p0, v1, :cond_31

    const/4 v0, 0x2

    return v0

    :cond_31
    if-ltz p0, :cond_32

    const/4 v0, 0x1

    return v0

    :cond_32
    return v0
.end method
