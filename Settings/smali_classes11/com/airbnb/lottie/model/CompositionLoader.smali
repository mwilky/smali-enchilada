.class public abstract Lcom/airbnb/lottie/model/CompositionLoader;
.super Landroid/os/AsyncTask;
.source "CompositionLoader.java"

# interfaces
.implements Lcom/airbnb/lottie/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Void;",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;",
        "Lcom/airbnb/lottie/Cancellable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    .local p0, "this":Lcom/airbnb/lottie/model/CompositionLoader;, "Lcom/airbnb/lottie/model/CompositionLoader<TParams;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 11
    .local p0, "this":Lcom/airbnb/lottie/model/CompositionLoader;, "Lcom/airbnb/lottie/model/CompositionLoader<TParams;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/CompositionLoader;->cancel(Z)Z

    .line 12
    return-void
.end method
