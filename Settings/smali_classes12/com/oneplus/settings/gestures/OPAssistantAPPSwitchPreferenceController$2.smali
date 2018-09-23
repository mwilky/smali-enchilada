.class Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;
.super Ljava/lang/Object;
.source "OPAssistantAPPSwitchPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->noAssistantAppDialog()V
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
    .param p1, "this$0"    # Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    .line 139
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$200(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$100(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_turn_on_voice_assistant"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 143
    return-void
.end method
