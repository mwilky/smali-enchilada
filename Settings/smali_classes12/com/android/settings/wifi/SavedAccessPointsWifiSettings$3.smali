.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;
.super Landroid/os/Handler;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->access$100(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    :cond_0
    return-void
.end method
