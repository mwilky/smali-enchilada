.class public Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DeviceIndexFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/DeviceIndexFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIndex(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public isIndexingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
