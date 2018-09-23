.class Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractLogpersistPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;->this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "CURRENT_LOGD_VALUE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;->this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->access$000(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;Ljava/lang/String;)V

    return-void
.end method
