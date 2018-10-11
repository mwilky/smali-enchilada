.class public Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# static fields
.field public static final EXTRA_SOURCE_METRICS_CATEGORY:Ljava/lang/String; = ":settings:source_metrics"

.field private static final TAG:Ljava/lang/String; = "VisibilityLoggerMixin"


# instance fields
.field private final mMetricsCategory:I

.field private mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSourceMetricsCategory:I

.field private mVisibleTimestamp:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    return-void
.end method

.method public constructor <init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iput p1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    iput-object p2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public elapsedTimeSinceVisible()J
    .locals 4

    iget-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iget v3, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public setSourceMetricsCategory(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, ":settings:source_metrics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    return-void

    :cond_2
    :goto_0
    return-void
.end method
