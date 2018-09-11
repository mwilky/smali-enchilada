.class public Lcom/airbnb/lottie/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lcom/airbnb/lottie/LottieDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1
    .param p1, "animationView"    # Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->drawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 47
    return-object p1
.end method

.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 83
    iget-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    return-object v0
.end method

.method public invalidateAllText()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    invoke-direct {p0}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 80
    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 72
    return-void
.end method

.method public setCacheText(Z)V
    .locals 0
    .param p1, "cacheText"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    .line 64
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Lcom/airbnb/lottie/TextDelegate;->invalidate()V

    .line 56
    return-void
.end method
