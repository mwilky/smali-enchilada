.class Lcom/android/settings/development/OemUnlockPreferenceController$2$1;
.super Ljava/lang/Object;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/OemUnlockPreferenceController$2;->uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OemUnlockPreferenceController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;->this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;->this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;

    iget-object v0, v0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;->this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;

    iget-object v1, v1, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$300(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
