.class synthetic Lcom/oneplus/settings/opfinger/RectangleMask$1;
.super Ljava/lang/Object;
.source "RectangleMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/RectangleMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

.field static final synthetic $SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->values()[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipNone:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipX:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    sget-object v4, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v4}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    sget-object v5, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipXY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->values()[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    :try_start_4
    sget-object v4, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    sget-object v5, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    sget-object v4, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v4}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    return-void
.end method
