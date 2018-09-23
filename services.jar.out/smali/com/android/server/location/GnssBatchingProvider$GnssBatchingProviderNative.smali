.class Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssBatchingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssBatchingProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupBatching()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->access$500()V

    return-void
.end method

.method public flushBatch()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->access$200()V

    return-void
.end method

.method public getBatchSize()I
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->access$000()I

    move-result v0

    return v0
.end method

.method public initBatching()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->access$400()Z

    move-result v0

    return v0
.end method

.method public startBatch(JZ)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->access$100(JZ)Z

    move-result v0

    return v0
.end method

.method public stopBatch()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->access$300()Z

    move-result v0

    return v0
.end method
