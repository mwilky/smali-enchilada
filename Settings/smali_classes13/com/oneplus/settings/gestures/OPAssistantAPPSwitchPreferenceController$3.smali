.class Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;
.super Ljava/lang/Object;
.source "OPAssistantAPPSwitchPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->toSelectAssistantAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.intent.DefaultAssistPicker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "assistntapp"

    const-string v2, "switch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$300(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$400(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_turn_on_voice_assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "quick_turn_on_voice_assistant"

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
