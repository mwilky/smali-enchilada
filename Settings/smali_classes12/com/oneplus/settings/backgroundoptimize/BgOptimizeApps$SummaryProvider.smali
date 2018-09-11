.class Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
.super Ljava/lang/Object;
.source "BgOptimizeApps.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 40
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "x2"    # Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary(I)V
    .locals 6
    .param p1, "count"    # I

    .line 62
    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120a16

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .line 59
    return-void
.end method
