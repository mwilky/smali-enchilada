.class Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "ConnectedDeviceDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getDeviceConnetionSummaryString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
