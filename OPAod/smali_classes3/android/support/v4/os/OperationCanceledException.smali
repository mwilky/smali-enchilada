.class public Landroid/support/v4/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "The operation has been canceled."

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
