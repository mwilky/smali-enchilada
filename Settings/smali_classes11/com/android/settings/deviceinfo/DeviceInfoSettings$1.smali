.class Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 123
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$SummaryProvider;

    invoke-direct {v0, p2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$SummaryProvider;-><init>(Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method
