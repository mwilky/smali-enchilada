.class Lcom/android/settings/SettingsActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .line 551
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 554
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$100(Lcom/android/settings/SettingsActivity;)V

    .line 555
    return-void
.end method
