.class Lcom/android/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->startWapiCertManage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettings;

    .line 1148
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1151
    const-string v0, "WifiSettings"

    const-string v1, "startWapiCertManage: yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.Wapi.CertManage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1154
    return-void
.end method
