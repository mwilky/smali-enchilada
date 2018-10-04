.class public Landroid/net/lowpan/NetworkAlreadyExistsException;
.super Landroid/net/lowpan/LowpanException;
.source "NetworkAlreadyExistsException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
