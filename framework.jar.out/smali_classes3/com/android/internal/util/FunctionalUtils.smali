.class public Lcom/android/internal/util/FunctionalUtils;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/-$$Lambda$FunctionalUtils$koCSI8D7Nu5vOJTVTEj0m3leo_U;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/-$$Lambda$FunctionalUtils$koCSI8D7Nu5vOJTVTEj0m3leo_U;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$handleExceptions$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
