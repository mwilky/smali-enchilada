.class public Lcom/oneplus/screenshot/longshot/transform/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/transform/JTFFT;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/transform/JTFFT;-><init>(I)V

    return-object v0
.end method
