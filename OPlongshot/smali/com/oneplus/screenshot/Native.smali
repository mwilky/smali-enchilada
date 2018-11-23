.class public Lcom/oneplus/screenshot/Native;
.super Ljava/lang/Object;
.source "Native.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "encryptjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native add(II)I
.end method

.method public static native doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
