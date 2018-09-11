.class public final Lcom/google/common/base/Verify;
.super Ljava/lang/Object;
.source "Verify.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .line 97
    if-eqz p0, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/google/common/base/VerifyException;

    invoke-direct {v0}, Lcom/google/common/base/VerifyException;-><init>()V

    throw v0
.end method

.method public static varargs verify(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 122
    if-eqz p0, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/google/common/base/VerifyException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 134
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    const-string v0, "expected a non-null reference"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 156
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method
