.class final enum Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
.super Ljava/lang/Enum;
.source "DoubleFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Plans"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field public static final enum BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field public static final enum MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field public static final enum SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    const-string v1, "SPLIT_RADIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    const-string v1, "MIXED_RADIX"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    const-string v1, "BLUESTEIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    const/4 v0, 0x3

    new-array v0, v0, [Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    aput-object v1, v0, v2

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    aput-object v1, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    aput-object v1, v0, v4

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->$VALUES:[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    .locals 1

    const-class v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    return-object v0
.end method

.method public static values()[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    .locals 1

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->$VALUES:[Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v0}, [Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    return-object v0
.end method
