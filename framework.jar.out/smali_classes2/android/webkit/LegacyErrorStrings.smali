.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4

    const v0, 0x104028d

    packed-switch p0, :pswitch_data_0

    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using generic message for unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const v0, 0x1040295

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const v0, 0x1040294

    return v0

    :pswitch_3
    const v0, 0x104029a

    return v0

    :pswitch_4
    const v0, 0x104028e

    return v0

    :pswitch_5
    const v0, 0x1040296

    return v0

    :pswitch_6
    const v0, 0x104028f

    return v0

    :pswitch_7
    const v0, 0x1040293

    return v0

    :pswitch_8
    const v0, 0x1040298

    return v0

    :pswitch_9
    const v0, 0x1040297

    return v0

    :pswitch_a
    const v0, 0x1040008

    return v0

    :pswitch_b
    const v0, 0x1040290

    return v0

    :pswitch_c
    const v0, 0x1040007

    return v0

    :pswitch_d
    const v0, 0x1040291

    return v0

    :pswitch_e
    const v0, 0x1040292

    return v0

    :pswitch_f
    const v0, 0x1040299

    return v0

    :pswitch_data_0
    .packed-switch -0xf
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

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
