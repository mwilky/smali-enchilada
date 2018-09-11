.class public final Lcom/airbnb/lottie/model/FileCompositionLoader;
.super Lcom/airbnb/lottie/model/CompositionLoader;
.source "FileCompositionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/CompositionLoader<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadedListener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 14
    invoke-direct {p0}, Lcom/airbnb/lottie/model/CompositionLoader;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/model/FileCompositionLoader;->res:Landroid/content/res/Resources;

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/model/FileCompositionLoader;->loadedListener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 2
    .param p1, "params"    # [Ljava/io/InputStream;

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/FileCompositionLoader;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/FileCompositionLoader;->doInBackground([Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/FileCompositionLoader;->loadedListener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 25
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/FileCompositionLoader;->onPostExecute(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
