.class Lcom/android/settings/notification/SoundSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "x1"    # Lcom/android/settings/notification/SoundSettings$1;

    .line 839
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 857
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SoundSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 860
    :cond_0
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SoundSettings$H;->sendEmptyMessage(I)Z

    .line 863
    :cond_1
    :goto_0
    return-void
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .line 843
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 844
    :cond_0
    if-eqz p1, :cond_1

    .line 845
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 846
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 852
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/SoundSettings$Receiver;->mRegistered:Z

    .line 853
    return-void
.end method
