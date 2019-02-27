.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    if-ne v0, v1, :cond_6

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v3, v3, v2

    move v5, v1

    :goto_1
    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_0

    mul-int/lit8 v6, v2, 0x2

    aput v3, v0, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v0, v6

    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    shl-int v3, v4, v2

    new-array v3, v3, [[I

    sput-object v3, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    move v3, v1

    :goto_2
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    move v7, v1

    :goto_3
    array-length v9, v0

    if-ge v7, v9, :cond_4

    add-int/lit8 v9, v7, 0x1

    aget v9, v0, v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    aget v10, v0, v7

    aput v10, v6, v8

    move v8, v9

    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_4
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-array v0, v1, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    new-array v0, v4, [I

    aput v1, v0, v1

    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAttribute([[II)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-eq v6, p1, :cond_2

    neg-int v7, v6

    if-ne v7, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "A "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "P "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v3, "C "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v3, "E "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v3, "W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v3, "F "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_6
        0x101009d -> :sswitch_5
        0x101009e -> :sswitch_4
        0x10100a0 -> :sswitch_3
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x10102fe -> :sswitch_0
    .end sparse-switch
.end method

.method public static get(I)[I
    .locals 2

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isWildCard([I)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    aget v0, p0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static stateSetMatches([II)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget v4, p0, v2

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-lez v4, :cond_1

    if-eq p1, v4, :cond_2

    return v1

    :cond_1
    neg-int v3, v4

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static stateSetMatches([I[I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    nop

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v2, p0

    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_a

    aget v5, p0, v4

    if-nez v5, :cond_3

    return v0

    :cond_3
    if-lez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    neg-int v5, v5

    :goto_2
    const/4 v7, 0x0

    move v8, v1

    :goto_3
    if-ge v8, v3, :cond_8

    aget v9, p1, v8

    if-nez v9, :cond_5

    if-eqz v6, :cond_8

    return v1

    :cond_5
    if-ne v9, v5, :cond_7

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    if-nez v7, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return v0
.end method

.method public static trimStateSet([II)[I
    .locals 2

    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
