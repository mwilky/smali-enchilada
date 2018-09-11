.class public final Landroid/support/v17/leanback/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static safeLongToInt(J)I
    .locals 2
    .param p0, "numLong"    # J

    .line 36
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    .line 39
    long-to-int v0, p0

    return v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Input overflows int.\n"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
